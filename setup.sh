#!/bin/bash
clear

# GENERAL DRIVES (NVIDIA)
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo dpkg --add-architecture i386 
sudo apt update

sudo apt install libvulkan1 libvulkan1:i386


# WINEHQ INSTALL

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ groovy main'

sudo apt update
sudo apt install --install-recommends winehq-stable


# WINEHQ DRIVES
sudo apt install winetricks


# LUTRIS INSTALL
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install lutris


# STEAM INSTALL

sudo apt-get install steam


# CUSTOM PROTON INSTALL
wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/5.9-GE-8-ST/Proton-5.9-GE-8-ST.tar.gz
tar -xvzf Proton-5.9-GE-8-ST.tar.gz
mv /Proton-5.9-GE-8-ST $HOME/.steam/root/compatibilitytools.d/Proton-5.9-GE-8-ST
