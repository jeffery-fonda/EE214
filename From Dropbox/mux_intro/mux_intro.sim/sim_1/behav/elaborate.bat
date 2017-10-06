@echo off
set xv_path=D:\\vivadoStuff\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto b4bcf3b19f204010a3d274b61fc35fea -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot testbench_behav xil_defaultlib.testbench xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
