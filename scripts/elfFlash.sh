#!/usr/bin/env bash

quartusLoc=`which nios2-gdb-server`
stringToRemove=/bin/nios2-gdb-server

export QUARTUS_ROOTDIR=${quartusLoc%$stringToRemove}


cd ../ADC_Socket
elf2flash --input=ADC_Socket.elf --output=ext_flash.flash --base=0x0 --end=0x07FFFFFF --boot=$QUARTUS_ROOTDIR/../nios2eds/components/altera_nios2/boot_loader_cfi.srec
cd $OLDPWD