@echo off
iccstm8 ./test.c -e -Oh --code_model  small --data_model medium --vregs 16 -o ./output/test.o
ilinkstm8 --config_def _CSTACK_SIZE=0x100 --config_def _HEAP_SIZE=0x100 --config ./lnkstm8l101k3.icf ./output/test.o -o ./output/test.out
ielftool --bin ./output/test.out ./output/test.bin
ielftool --ihex ./output/test.out ./output/test.hex
echo app make and link successful!
pause