#!/bin/bash

# Configuration
VIVADO_VERSION="2024.1"
PROJECT_NAME="HornetRISCV-vivado"
PROJECT_DIR="../../../${PROJECT_NAME}" # 3 directories up relative to the "out" folder
SIM_TOP="barebones_top_tb.v"
LOG_FILE="simulation.log"
WAVE_CONFIG="barebones_top_tb_behav.wcfg"  # Optional waveform config
CC32=riscv32-unknown-elf
USE_RISCVDV=0
TEST="tf_fdiv.s"
# TEST="tf_fdiv.s" also works: runs a full testfloat regression (all
# rounding modes, randomized per chunk) for that op instead. Requires
# USE_RISCVDV=0.
TF_SEED=1                # seed for chunk-to-rounding-mode assignment
TF_LEVEL=1                # testfloat_gen test level (1 or 2; 2 is much larger)
TF_CHUNK=1500             # cases per ROM image
TF_VIVADO_DURATION="400ms"

# Detect if running under WSL
if uname -r | grep -qi "microsoft"; then
    WSL=1
else
    WSL=0
fi

: > "${LOG_FILE}"

# Generates run_sim.tcl from the current $PROJECT_DIR/$VIVADO_DURATION,
# launches Vivado, and returns its exit status (0 = success).
run_vivado_once() {
    cat > run_sim.tcl << EOF
# Open project
if {[catch {open_project ${PROJECT_DIR}/${PROJECT_NAME}.xpr} result]} {
    puts stderr "Error opening project: \$result"
    exit 1
}

# Optional: Load waveform configuration
if {[file exists ${WAVE_CONFIG}]} {
    open_wave_config ${WAVE_CONFIG}
}

# Launch simulation
launch_simulation

# Run simulation (adjust time as needed)
run ${VIVADO_DURATION}

# Close project and exit
close_project
exit
EOF

    echo "Starting RTL simulation at $(date)" | tee -a "${LOG_FILE}"
    if [ "$WSL" -eq 0 ]; then
        vivado -mode batch -source run_sim.tcl -notrace | tee -a "${LOG_FILE}"
    else
        cmd.exe /C vivado -mode batch -source run_sim.tcl -notrace | tee -a "${LOG_FILE}"
    fi
    local status=$?

    rm -f run_sim.tcl

    if [ $status -eq 0 ]; then
        echo "Simulation completed successfully" | tee -a "${LOG_FILE}"
    else
        echo "Simulation failed" | tee -a "${LOG_FILE}"
    fi
    return $status
}

# Converts the given spike commit log (path relative to ../riscv-dv) plus the
# RTL trace into CSVs and diffs them. Returns compare.py's exit status
# (0 = pass, 1 = mismatch).
compare_trace() {
    local spike_log="$1"
    (
        cd ../riscv-dv || exit 1
        python3 scripts/spike_log_to_trace_csv.py --log "${spike_log}" --csv spike_deneme.csv -f
        python3 scripts/trace_to_csv.py -l ../../trace.log -o deneme.csv
        python3 scripts/compare.py deneme.csv spike_deneme.csv combined.csv
    )
    return $?
}

if [ "$USE_RISCVDV" -eq 1 ]; then
    python3 run.py --verbose --test ${TEST} --simulator pyflow --isa rv32imf --mabi ilp32f --sim_opts=""

    if [ -d "out_$(date +%Y-%m-%d)" ]; then
        cd "out_$(date +%Y-%m-%d)"
    else
        echo "Directory not found"
        exit 1
    fi

    ${CC32}-objcopy -O binary -j .init -j .text -j .rodata -j .sdata asm_test/${TEST}_0.o final.bin
    ../../rom_generator final.bin
    cp final.data ../../memory_contents/instruction.data #Always writing on the same file simplifies the vivado simulation
    VIVADO_DURATION="1ms"

    run_vivado_once
    if [ $? -ne 0 ]; then
        exit 1
    fi

    cd ..
    compare_trace "out_$(date +%Y-%m-%d)/spike_sim/${TEST}_0.log"

    # Add a counter to limit repetitions
    MAX_ITER=1000
    COUNTER_FILE=".run_counter"

    if [ ! -f "$COUNTER_FILE" ]; then
        echo 1 > "$COUNTER_FILE"
    fi

    COUNTER=$(cat "$COUNTER_FILE")

    if compare_trace "out_$(date +%Y-%m-%d)/spike_sim/${TEST}_0.log" > /dev/null 2>&1; then
        if [ $? -ne 1 ]; then
            if [ "$COUNTER" -lt "$MAX_ITER" ]; then
                COUNTER=$((COUNTER + 1))
                echo "$COUNTER" > "$COUNTER_FILE"
                # Print colored message (green)
                echo -e "\033[1;32mRepeating the script as last test had no failures (iteration $COUNTER/$MAX_ITER)\033[0m"
                exec "$0"
            else
                echo "Maximum iterations ($MAX_ITER) reached. Stopping."
                rm -f "$COUNTER_FILE"
            fi
        else
            # Reset counter on failure
            echo 1 > "$COUNTER_FILE"
        fi
    else
        # Reset counter on failure
        echo 1 > "$COUNTER_FILE"
    fi

elif [[ "$TEST" == tf_* ]]; then
    TF_OP="${TEST#tf_}"
    case "$TF_OP" in
        fadd.s)  TFOP=f32_add;  NOPS=2 ;;
        fsub.s)  TFOP=f32_sub;  NOPS=2 ;;
        fmul.s)  TFOP=f32_mul;  NOPS=2 ;;
        fdiv.s)  TFOP=f32_div;  NOPS=2 ;;
        fsqrt.s) TFOP=f32_sqrt; NOPS=1 ;;
        *)
            echo "Unknown testfloat op: ${TF_OP}"
            exit 1
            ;;
    esac

    TEST_DIR="../testfloat"
    cd "${TEST_DIR}"

    make gen-mixed TFOP="$TFOP" OP="$TF_OP" NOPS="$NOPS" LEVEL="$TF_LEVEL" CHUNK="$TF_CHUNK" SEED="$TF_SEED"
    make build OP="$TF_OP"

    PREFIX="tf_$(echo "$TF_OP" | tr . _)"
    PROJECT_DIR="../../${PROJECT_NAME}" # 3 directories up relative to the test folder
    VIVADO_DURATION="$TF_VIVADO_DURATION"

    for data_file in $(ls ${PREFIX}_*.data | sort); do
        chunk="${data_file%.data}"
        rm_name=$(grep -m1 "^# ROUNDING_MODE:" "${chunk}.S" | sed 's/^# ROUNDING_MODE: //')
        echo "=== Running chunk ${chunk} (rounding mode: ${rm_name}) ==="
        cp "${data_file}" ../memory_contents/instruction.data

        echo "Running spike"
        if [[ -z "${SPIKE_PATH}" ]]; then
            spike --log-commits --isa=rv32imf --priv=M -m0xf000:1,0x10000:0x8000,0x8010:1 -l --log=spike.log "${chunk}.elf"
        else
            ${SPIKE_PATH}/spike --log-commits --isa=rv32imf --priv=M -m0xf000:1,0x10000:0x8000,0x8010:1 -l --log=spike.log "${chunk}.elf"
        fi
        echo "Spike simulation completed"

        run_vivado_once
        if [ $? -ne 0 ]; then
            echo "Vivado failed on chunk ${chunk}"
            exit 1
        fi

        compare_trace "${TEST_DIR}/spike.log"
        if [ $? -ne 0 ]; then
            echo "Mismatch in chunk ${chunk} -- stopping"
            exit 1
        fi
    done

    echo "All chunks passed for ${TF_OP}"

else
    if [ -d "../${TEST}" ]; then
        TEST_DIR="../${TEST}"
    elif [ -d "../testfloat" ] && [ -f "../testfloat/${TEST}.elf" ]; then
        TEST_DIR="../testfloat" # prebuilt tf_*_NNN chunk (own makefile), shared dir for all chunks
    else
        echo "Directory not found"
        exit 1
    fi
    cd "${TEST_DIR}"
    if [ ! -f "${TEST}.elf" ]; then
        CCFLAGS="-march=rv32imf -mabi=ilp32f -Os -fno-math-errno -T ../linksc-10000.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -g -ggdb -o ${TEST}.elf"
        ${CC32}-gcc ${TEST}.s ../crt0.s ${CCFLAGS} # Might need to change the test extension to .c if the test is written in C
        ${CC32}-objcopy -O binary -j .init -j .text -j .rodata -j .sdata ${TEST}.elf ${TEST}.bin
        ../rom_generator ${TEST}.bin
    fi
    cp ${TEST}.data ../memory_contents/instruction.data
    echo "Test compiled, running spike"
    if [[ -z "${SPIKE_PATH}" ]]; then
      spike --log-commits --isa=rv32imf --priv=M -m0xf000:1,0x10000:0x8000,0x8010:1 -l --log=spike.log ${TEST}.elf
    else
      ${SPIKE_PATH}/spike --log-commits --isa=rv32imf --priv=M -m0xf000:1,0x10000:0x8000,0x8010:1 -l --log=spike.log ${TEST}.elf
    fi
    echo "Spike simulation completed"
    PROJECT_DIR="../../${PROJECT_NAME}" # 3 directories up relative to the test folder
    VIVADO_DURATION="400ms"

    run_vivado_once
    if [ $? -ne 0 ]; then
        exit 1
    fi

    compare_trace "${TEST_DIR}/spike.log"
fi

echo "Simulation log saved to ${LOG_FILE}"
