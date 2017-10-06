# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/Project 5/project_5.3/BlinkLED.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/Project 5/project_5.3/BlinkLED.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib {
  {C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/Project 5/project_5.3/BlinkLED.srcs/sources_1/new/diff_inst.v}
  {C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/Project 5/project_5.3/BlinkLED.srcs/sources_1/new/clk_divider.v}
}
read_xdc {{C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/Project 5/project_5.3/BlinkLED.srcs/constrs_1/imports/basys3_master/Basys3_Master.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/Jeffery Fonda/Dropbox/Classes/EE Classes/EE214 Projects/Project 5/project_5.3/BlinkLED.srcs/constrs_1/imports/basys3_master/Basys3_Master.xdc}}]

synth_design -top clk_divider -part xc7a35tcpg236-1
write_checkpoint -noxdef clk_divider.dcp
catch { report_utilization -file clk_divider_utilization_synth.rpt -pb clk_divider_utilization_synth.pb }
