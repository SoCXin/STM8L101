@echo off
iccstm8 ./bootloader.c -e -Oh --code_model  small --data_model medium --vregs 16 -o ./output/bootloader.o
ilinkstm8 --config_def _CSTACK_SIZE=0x100 --config_def _HEAP_SIZE=0x100 --config ./lnkstm8l101k3.icf ./output/bootloader.o -o ./output/bootloader.out
ielftool --bin ./output/bootloader.out ./output/bootloader.bin
ielftool --ihex ./output/bootloader.out ./output/bootloader.hex
echo bootloader make and link successful!
pause