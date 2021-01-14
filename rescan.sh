#!/bin/bash
# This script is used to rescan the PCIe interface for Xilinx FPGAs
# whenever a bitstream has been loaded.
# Note: This script requires root

# Remove all Xilinx PCIe devices
for f in /sys/bus/pci/devices/*; do
    if egrep -q "0x10ee|0x1e24|9021" $f/vendor; then
        echo "Removing $f"
        echo 1 > $f/remove
    fi
done

# Rescan the entire bus
echo 1 > /sys/bus/pci/rescan
