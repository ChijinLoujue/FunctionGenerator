@echo off
set xv_path=D:\\WorkSoftware\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto 1016ab3c1edf48d09306c6c4cab53300 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L xpm -L blk_mem_gen_v8_3_3 -L unisims_ver -L unimacro_ver -L secureip --snapshot FunctionGenerator_tb_behav xil_defaultlib.FunctionGenerator_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
