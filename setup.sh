#!/bin/bash
clear

mkdir InstallFiles && cd InstallFiles

# GENERAL DRIVES (NVIDIA)
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo dpkg --add-architecture i386 
sudo apt -y update

sudo apt -y install libvulkan1 libvulkan1:i386


# WINEHQ INSTALL

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

sudo add-apt-repository -y 'deb https://dl.winehq.org/wine-builds/ubuntu/ groovy main'

sudo apt -y update
sudo apt -y install --install-recommends winehq-stable


# WINEHQ DRIVES
sudo apt install -y winetricks


# LUTRIS INSTALL
sudo add-apt-repository -y ppa:lutris-team/lutris
sudo apt -y update
sudo apt -y install  lutris


# STEAM INSTALL
sudo apt -y install steam


# CUSTOM PROTON INSTALL
wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/5.9-GE-8-ST/Proton-5.9-GE-8-ST.tar.gz
tar -xvzf Proton-5.9-GE-8-ST.tar.gz
mkdir $HOME/.steam/root/compatibilitytools.d/Proton-5.9-GE-8-ST
mv Proton-5.9-GE-8-ST $HOME/.steam/root/compatibilitytools.d/Proton-5.9-GE-8-ST


# DELETE TMP FILES
cd .. && rm -rf InstallFiles
