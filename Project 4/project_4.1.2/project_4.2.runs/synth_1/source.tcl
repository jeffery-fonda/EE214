# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/project_4.1.2/project_4.2.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/project_4.1.2/project_4.2.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {{C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/project_4.1.2/project_4.2.srcs/sources_1/new/source.v}}
read_xdc {{C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/project_4.1.2/project_4.2.srcs/constrs_1/new/constraints.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/project_4.1.2/project_4.2.srcs/constrs_1/new/constraints.xdc}}]

synth_design -top source -part xc7a35tcpg236-1
write_checkpoint -noxdef source.dcp
catch { report_utilization -file source_utilization_synth.rpt -pb source_utilization_synth.pb }
