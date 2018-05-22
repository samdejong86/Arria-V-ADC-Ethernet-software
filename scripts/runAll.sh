#!/usr/bin/env bash

source generateBSP.sh

cd ../ADC_Socket
make
cd $OLDPWD

source programNios.sh

nios2-terminal
