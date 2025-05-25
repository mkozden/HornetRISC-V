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
TEST="fputest3"

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
else
    if [ -d "../${TEST}" ]; then
        CCFLAGS="-march=rv32imf -mabi=ilp32f -Os -fno-math-errno -T ../linksc-10000.ld -lm -nostartfiles -ffunction-sections -fdata-sections -Wl,--gc-sections -g -ggdb -o ${TEST}.elf"
        cd "../${TEST}"
        ${CC32}-gcc ${TEST}.s ../crt0.s ${CCFLAGS} # Might need to change the test extension to .c if the test is written in C
        ${CC32}-objcopy -O binary -j .init -j .text -j .rodata -j .sdata ${TEST}.elf ${TEST}.bin
        ../rom_generator ${TEST}.bin
        cp ${TEST}.data ../memory_contents/instruction.data
        echo "Test compiled, running spike"
        ${SPIKE_PATH}/spike --log-commits --isa=rv32imf --priv=M -m0xf000:1,0x10000:0x8000,0x8010:1 -l --log=spike.log ${TEST}.elf
        echo "Spike simulation completed"
        PROJECT_DIR="../../${PROJECT_NAME}" # 3 directories up relative to the test folder
        VIVADO_DURATION="400ms"
    else
        echo "Directory not found"
        exit 1
    fi
fi


# Generate TCL script
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

# Detect if running under WSL
if uname -r | grep -qi "microsoft"; then
    WSL=1
else
    WSL=0
fi

# Run simulation
echo "Starting RTL simulation at $(date)" | tee ${LOG_FILE}
if [ "$WSL" -eq 0 ]; then
    vivado -mode batch -source run_sim.tcl -notrace | tee -a ${LOG_FILE}
else
    cmd.exe /C vivado -mode batch -source run_sim.tcl -notrace | tee -a ${LOG_FILE}
fi


# Check exit status
if [ $? -eq 0 ]; then
    echo "Simulation completed successfully" | tee -a ${LOG_FILE}
else
    echo "Simulation failed" | tee -a ${LOG_FILE}
    exit 1
fi

# Cleanup
rm -f run_sim.tcl

echo "Simulation log saved to ${LOG_FILE}"

if [ "$USE_RISCVDV" -eq 1 ]; then
    cd ..
    python3 scripts/spike_log_to_trace_csv.py --log "out_$(date +%Y-%m-%d)"/spike_sim/${TEST}_0.log --csv spike_deneme.csv -f
    python3 scripts/trace_to_csv.py -l ../../trace.log -o deneme.csv
    python3 scripts/compare.py deneme.csv spike_deneme.csv combined.csv

    # Add a counter to limit repetitions
    MAX_ITER=1000
    COUNTER_FILE=".run_counter"

    if [ ! -f "$COUNTER_FILE" ]; then
        echo 1 > "$COUNTER_FILE"
    fi

    COUNTER=$(cat "$COUNTER_FILE")

    if python3 scripts/compare.py deneme.csv spike_deneme.csv combined.csv > /dev/null 2>&1; then
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
else
    cd "../riscv-dv"
    python3 scripts/spike_log_to_trace_csv.py --log "../${TEST}/spike.log" --csv spike_deneme.csv -f
    python3 scripts/trace_to_csv.py -l ../../trace.log -o deneme.csv
    python3 scripts/compare.py deneme.csv spike_deneme.csv combined.csv
fi


