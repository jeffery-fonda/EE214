# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/led_sw/Projects/project_last/project_last.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/led_sw/Projects/project_last/project_last.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {{C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/led_sw/Projects/project_last/project_last.srcs/sources_1/new/stopwatch.v}}
synth_design -top stopwatch -part xc7a35tcpg236-1
write_checkpoint -noxdef stopwatch.dcp
catch { report_utilization -file stopwatch_utilization_synth.rpt -pb stopwatch_utilization_synth.pb }
