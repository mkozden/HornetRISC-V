#!/bin/bash

# Configuration
VIVADO_VERSION="2024.1"
PROJECT_NAME="Hornet_Tracer"
PROJECT_DIR="/home/deniz/${PROJECT_NAME}"
SIM_TOP="barebones_top_tb.v"
LOG_FILE="simulation.log"
WAVE_CONFIG="barebones_top_tb_behav.wcfg"  # Optional waveform config

python3 run.py --test riscv_floating_point_arithmetic_test --simulator pyflow --isa rv32imf --mabi ilp32f

if [ -d "out_$(date +%Y-%m-%d)" ]; then
    cd "out_$(date +%Y-%m-%d)"
else
    echo "Directory not found"
    exit 1
fi

../../rom_generator asm_test/riscv_floating_point_arithmetic_test_0.bin

cp asm_test/riscv_floating_point_arithmetic_test_0.data ../../memory_contents

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

# Run simulation
echo "Starting simulation at $(date)" | tee ${LOG_FILE}
vivado -mode batch -source run_sim.tcl -notrace | tee -a ${LOG_FILE}

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
cd ..

python3 scripts/spike_log_to_trace_csv.py --log "out_$(date +%Y-%m-%d)"/spike_sim/riscv_floating_point_arithmetic_test_0.log --csv spike_deneme.csv -f
python3 scripts/spike_csv_to_gpr.py -i spike_deneme.csv -o spike.csv
python3 scripts/trace_to_csv.py -l ~/trace.log -o deneme.csv
python3 scripts/compare.py
python3 scripts/last_compare.py







