#!/bin/bash
# Simple bash script to install dependencies on Arch and Ubuntu distros 

printf " *** Installing Dependecies to Build Android Roms ***"
printf " Choose OS\n 1.Arch Linux\n 2.Ubuntu 16.04\n\n"
printf "Enter option: "
read option

# Arch linux 
function arch { 
    printf "Installing dependencies on Arch Linux\n\n"
    sudo pacman -Syyu 
    sudo pacman -S pacaur 
    gpg --recv-keys 702353E0F7E48EDB
    pacaur -S aosp-devel lineageos-devel
    printf "Remember to have python2 (not python3) in your PATH when building the rom\n"
    printf "or run \nvirtualenv2 venv \nsource venv/bin/activate \nexport LC_ALL=C\n\n"
}

# Ubuntu 16.04 and further
function ubuntu {
    printf "Installing dependencies on Ubuntu 16.04\n\n"
    sudo apt-get update
    sudo apt-get install -y repo bc bison git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk3.0-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev schedtoolg++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev gcc-multilib maven tmux screen w3m ncftp
    sudo apt-get update
}

if [ "$option" = "1" ]; then
    arch
elif [ "$option" = "2" ];then
    ubuntu
else 
    printf " Invalid Option, run again with valid option\n\n"    
fi 
