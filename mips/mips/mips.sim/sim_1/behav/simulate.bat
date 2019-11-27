@echo off
set xv_path=C:\\Xilinx2\\Vivado\\2014.4\\bin
call %xv_path%/xsim main_behav -key {Behavioral:sim_1:Functional:main} -tclbatch main.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
