# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/aswan_000/Desktop/ee214/project 4/challenge #2/challenge #2.cache/wt} [current_project]
set_property parent.project_path {C:/Users/aswan_000/Desktop/ee214/project 4/challenge #2/challenge #2.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  {C:/Users/aswan_000/Desktop/ee214/project 4/challenge #2/challenge #2.srcs/sources_1/imports/challenge #2/counter.v}
  {C:/Users/aswan_000/Desktop/ee214/project 4/challenge #2/challenge #2.srcs/sources_1/new/segments.v}
}
read_xdc {{C:/Users/aswan_000/Desktop/ee214/project 4/challenge #2/challenge #2.srcs/constrs_1/new/constraint.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/aswan_000/Desktop/ee214/project 4/challenge #2/challenge #2.srcs/constrs_1/new/constraint.xdc}}]

synth_design -top segments -part xc7a35tcpg236-1
write_checkpoint -noxdef segments.dcp
catch { report_utilization -file segments_utilization_synth.rpt -pb segments_utilization_synth.pb }
