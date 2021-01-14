#!/bin/bash
sudo chmod +x ./Deploy-Script
sleep 1
sudo chmod +x ./Deploy-Script-daggen
sleep 1
sudo chmod +x daggen
sleep 1
sudo chmod +x ./Deploy-Script_top
sleep 1
sudo chmod +x ./programETH.tcl
sleep 1

sudo /tools/Xilinx/Vivado_Lab/2019.2/bin/vivado_lab -mode batch -source ./programETH.tcl
##sudo /tools/Xilinx/Vivado/2019.2/bin/vivado -mode batch -source ./programETH.tcl
