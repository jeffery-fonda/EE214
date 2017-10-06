# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7a100tcsg324-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Owner/Desktop/project/project.cache/wt [current_project]
set_property parent.project_path C:/Users/Owner/Desktop/project/project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_verilog -library xil_defaultlib C:/Users/Owner/Desktop/project/project.srcs/sources_1/new/sorce.v
read_xdc G:/Nexys4_Master_xdc/Nexys4_Master.xdc
set_property used_in_implementation false [get_files G:/Nexys4_Master_xdc/Nexys4_Master.xdc]

catch { write_hwdef -file sorce.hwdef }
synth_design -top sorce -part xc7a100tcsg324-1
write_checkpoint -noxdef sorce.dcp
catch { report_utilization -file sorce_utilization_synth.rpt -pb sorce_utilization_synth.pb }
