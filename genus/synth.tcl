# Cadence Genus Synthesis Script for self_diagnosing_fir
# Project: Self-Diagnosing 4-Tap FIR Filter
# Target Technology: Standard Cell Library (.lib)

###############################################################################
# 1. Environment & Library Setup
###############################################################################
set_attribute information_level 7 /
set_attribute hdl_search_path {./rtl} /

# Specify target library paths (Replace path to your technology library)
# Example: set_attribute library {/path/to/slow.lib /path/to/fast.lib} /
# For SkyWater 130nm or typical TSMC/Nangate process:
# set_attribute library {sky130_fd_sc_hd__tt_025C_1v80.lib} /

###############################################################################
# 2. Read HDL / Design Files
###############################################################################
read_hdl -v2001 { \
    rtl/fir.v \
    rtl/fir_diagnostic.v \
    rtl/diagnostic_controller.v \
    rtl/fault_injection.v \
    rtl/self_diagnosing_fir.v \
}

###############################################################################
# 3. Elaborate Top Design
###############################################################################
elaborate self_diagnosing_fir
check_design -unresolved self_diagnosing_fir

###############################################################################
# 4. Design Constraints (SDC)
###############################################################################
# Create 100MHz clock (10ns period)
create_clock -name "clk" -period 10.0 -waveform {0 5.0} [get_ports clk]

# Input / Output Delays & Constraints
set_input_delay -clock clk 2.0 [all_inputs -no_clocks]
set_output_delay -clock clk 2.0 [all_outputs]
set_clock_uncertainty 0.2 [get_clocks clk]

# Drive and Load Constraints
set_driving_cell -lib_cell BUFX2 [all_inputs -no_clocks]
set_load 0.05 [all_outputs]

###############################################################################
# 5. Synthesis & Optimization
###############################################################################
# Generic Synthesis
syn_gen self_diagnosing_fir

# Map to Technology Library
syn_map self_diagnosing_fir

# Gate-Level Optimization
syn_opt self_diagnosing_fir

###############################################################################
# 6. Generate Reports & Export Artifacts
###############################################################################
file mkdir genus_reports
file mkdir genus_outputs

# Reports
report_area > genus_reports/area.rpt
report_timing > genus_reports/timing.rpt
report_power > genus_reports/power.rpt
report_gates > genus_reports/gates.rpt
report_qor > genus_reports/qor.rpt

# Netlist & Constraint Exports for Innovus PnR
write_hdl self_diagnosing_fir > genus_outputs/self_diagnosing_fir_synth.v
write_sdc self_diagnosing_fir > genus_outputs/self_diagnosing_fir.sdc
write_design -basename genus_outputs/self_diagnosing_fir_design

puts "Synthesis completed successfully!"
exit
