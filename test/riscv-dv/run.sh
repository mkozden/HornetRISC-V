#!/bin/bash

# Configuration
VIVADO_VERSION="2024.1"
PROJECT_NAME="Hornet_Tracer"
PROJECT_DIR="/home/deniz/${PROJECT_NAME}" # 3 directories up relative to the "out" folder
SIM_TOP="barebones_top_tb.v"
LOG_FILE="simulation.log"
WAVE_CONFIG="barebones_top_tb_behav.wcfg"  # Optional waveform config
TEST="riscv_floating_point_arithmetic_test"

<<<<<<< HEAD
#python3 run.py --verbose --test riscv_floating_point_arithmetic_test --simulator pyflow --isa rv32imf --mabi ilp32f --sim_opts=""
=======
python3 run.py --verbose --test ${TEST} --simulator pyflow --isa rv32imf --mabi ilp32f --sim_opts=""
>>>>>>> 3d7fc3f84211dc3fae16d440c9af80a2700f59de

if [ -d "out_$(date +%Y-%m-%d)" ]; then
    cd "out_$(date +%Y-%m-%d)"
else
    echo "Directory not found"
    exit 1
fi

<<<<<<< HEAD

# riscv32-unknown-elf-as ../../crt0.s -o hornet.o #Compile the entry-exit functions of hornet

# grep -v '^\s*\.include' asm_test/riscv_floating_point_arithmetic_test_0.S > main_filtered.s #Remove the user extension includes
# riscv32-unknown-elf-as main_filtered.S -o main.o #Compile riscv-dv output

# riscv32-unknown-elf-objcopy --keep-symbol=init --keep-symbol=main --strip-all main.o main-clean.o #Remove everything except the main function

# riscv32-unknown-elf-ld -T ../../linksc-10000.ld hornet.o main-clean.o -o final.elf

$RISCV_OBJCOPY -O binary -j .init -j .text -j .rodata -j .sdata asm_test/riscv_floating_point_arithmetic_test_0.o final.bin
=======
riscv32-unknown-elf-objcopy -O binary -j .init -j .text -j .rodata -j .sdata asm_test/${TEST}_0.o final.bin
>>>>>>> 3d7fc3f84211dc3fae16d440c9af80a2700f59de
../../rom_generator final.bin
cp final.data ../../memory_contents/instruction.data #Always writing on the same file simplifies the vivado simulation

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
run 95612500ps

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
echo "Starting simulation at $(date)" | tee ${LOG_FILE}
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
#rm -f run_sim.tcl

echo "Simulation log saved to ${LOG_FILE}"
cd ..

<<<<<<< HEAD
python3 scripts/spike_log_to_trace_csv.py --log "out_$(date +%Y-%m-%d)"/spike_sim/riscv_floating_point_arithmetic_test_0.log --csv spike_deneme.csv -f
python3 scripts/trace_to_csv.py -l ~/trace.log -o deneme.csv
python3 scripts/compare.py deneme.csv spike_deneme.csv combined.csv
=======
python3 scripts/spike_log_to_trace_csv.py --log "out_$(date +%Y-%m-%d)"/spike_sim/${TEST}_0.log --csv spike_deneme.csv -f
python3 scripts/trace_to_csv.py -l ../../trace.log -o deneme.csv
python3 scripts/compare.py deneme.csv spike_deneme.csv combined.csv







>>>>>>> 3d7fc3f84211dc3fae16d440c9af80a2700f59de
