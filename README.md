# Arria-V-ADC-Ethernet-software

## Description

   Contains the software for the Nios II processor in the [Arria-V-ADC-Ethernet](https://github.com/samdejong86/Arria-V-ADC-Ethernet) project. This works with both the verilog and VHDL versions of the code.

   The software sets up a TCP/IP socket, which can be connected to via Telnet

## Setup

   There are scripts in the scripts/ subdirectory to assist with running the software

   Change to the scripts directory:
   
    cd scripts/

   Generate the board support package:

    ./generateBSP.sh

   Make the nios project:

    cd ../ADC_Socket/
    make
    cd ../scripts/

   Run the software on the board:

    programNios.sh

   (Optional) Open the nios terminal:

    nios2-terminal



## Usage

The socket can be connected to via telnet:

    telnet <ipaddress> 30

These commands can be sent from the telnet command line:
  
    ACQUIRE      - output most recent trigger
    TRIG:SLOPE:  - Set trigger slope: POS or NEG
    TRIG:SOURCE: - Set trigger source: SELF or EXT
    DELAY:       - Set delay: ON or OFF
    MENU         - display this menu 
    QUIT         - quit 

The python scripts in [Arria-V-ADC-Ethernet-scripts](https://github.com/samdejong86/Arria-V-ADC-Ethernet-scripts) can also be used to connect to the socket.


