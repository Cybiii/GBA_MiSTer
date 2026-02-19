# Run synthesis. Open project first (e.g. from create_project.tcl).
open_project [file join [pwd] "gba_zu3.xpr"]
reset_run synth_1
launch_runs synth_1 -jobs 4
wait_on_run synth_1
if { [get_property PROGRESS [get_runs synth_1]] != "100%" } { error "Synthesis failed" }
close_project
