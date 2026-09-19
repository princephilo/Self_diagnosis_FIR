# Cadence Genus Batch Run Script / Makefile helper

# To run Cadence Genus synthesis:
# genus -files genus/synth.tcl -log genus/genus.log

# Directory structure created:
# genus/
# ├── synth.tcl
# ├── genus_reports/
# │   ├── area.rpt
# │   ├── timing.rpt
# │   ├── power.rpt
# │   ├── gates.rpt
# │   └── qor.rpt
# └── genus_outputs/
#     ├── self_diagnosing_fir_synth.v
#     └── self_diagnosing_fir.sdc
