#!/bin/bash

#A simple bash script to setup tree while building a rom

#Color 
GREEN='\033[0;32m'
BLUE='\033[0;36m'
NC='\033[0m'

printf " \n ${BLUE}*** SetupTree Script Initiated ***${NC}\n"

# Reading oem, device, Soc and path of android rom
printf "\n${GREEN}Enter absolute path of android rom:${NC}\n"
read androidRom

printf "\n${GREEN}Enter oem name:${NC}\n"
read oem

printf "\n${GREEN}Enter device name:${NC}\n"
read device

printf "\n${GREEN}Enter Soc name:${NC}\n"
read Soc

# Reading github link and cloning reposotories to respective paths
printf "\n=> ${GREEN}Initiating tree setup for $oem/$device\n"

printf "\n> ${GREEN}Device Tree\nEnter github link of device tree:${NC}\n\n"
read deviceTreeLink
git clone $deviceTreeLink $androidRom/device/$oem/$device/


printf "\n> ${GREEN}Vendor Tree\nEnter github link of vendor tree:${NC}\n\n"
read vendorTreeLink
git clone $vendorTreeLink $androidRom/vendor/$oem/$device/

printf "\n> ${GREEN}Kernel Tree\nEnter github link of kernel tree:${NC}\n\n"
read kernelTreeLink
git clone $kernelTreeLink $androidRom/kernel/$oem/$device/

# Exiting
printf "\n${GREEN}=>Setting up trees finished \n\n ${BLUE}*** Exiting ***${NC}\n\n"