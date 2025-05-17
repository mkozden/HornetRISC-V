# Open project
if {[catch {open_project /home/deniz/Hornet_Tracer/Hornet_Tracer.xpr} result]} {
    puts stderr "Error opening project: $result"
    exit 1
}

# Optional: Load waveform configuration
if {[file exists barebones_top_tb_behav.wcfg]} {
    open_wave_config barebones_top_tb_behav.wcfg
}

# Launch simulation
launch_simulation

# Run simulation (adjust time as needed)
run 95612500ps

# Close project and exit
close_project
exit
