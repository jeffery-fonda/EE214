# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/onedrive/WSU/EE214/mux_demux/mux_demux.cache/wt [current_project]
set_property parent.project_path D:/onedrive/WSU/EE214/mux_demux/mux_demux.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  D:/onedrive/WSU/EE214/mux_demux/mux_demux.srcs/sources_1/new/mux.v
  D:/onedrive/WSU/EE214/mux_demux/mux_demux.srcs/sources_1/new/demux.v
  D:/onedrive/WSU/EE214/mux_demux/mux_demux.srcs/sources_1/new/wrapper.v
}
read_xdc D:/onedrive/WSU/EE214/mux_demux/mux_demux.srcs/constrs_1/imports/EE214/Basys3_Master.xdc
set_property used_in_implementation false [get_files D:/onedrive/WSU/EE214/mux_demux/mux_demux.srcs/constrs_1/imports/EE214/Basys3_Master.xdc]

synth_design -top wrapper -part xc7a35tcpg236-1
write_checkpoint -noxdef wrapper.dcp
catch { report_utilization -file wrapper_utilization_synth.rpt -pb wrapper_utilization_synth.pb }
