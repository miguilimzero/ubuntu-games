#!/bin/bash
clear

cd $HOME
mkdir InstallFiles && cd InstallFiles


# WINEHQ INSTALL
sudo dpkg --add-architecture i386 

wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key

sudo add-apt-repository -y 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'

sudo apt -y update
sudo apt -y install --install-recommends winehq-stable


# WINEHQ DRIVES
sudo apt install -y winetricks


# GENERAL DRIVES (NVIDIA)
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt -y update

wget http://ftp.br.debian.org/debian/pool/main/d/dxvk/dxvk_0.96+ds1-1_all.deb
wget http://ftp.br.debian.org/debian/pool/main/d/dxvk/dxvk-wine64-development_0.96+ds1-1_amd64.deb

sudo dpkg -y -i dxvk*
sudo apt -y install -f

cd /usr/lib/dxvk/wine64-development/ && ./setup_dxvk.sh install -y
cd $HOME


# LUTRIS INSTALL
sudo add-apt-repository -y ppa:lutris-team/lutris
sudo apt -y update
sudo apt -y install  lutris


# STEAM INSTALL
sudo apt -y install steam


# CUSTOM PROTON INSTALL
wget https://github.com/GloriousEggroll/proton-ge-custom/releases/download/5.9-GE-8-ST/Proton-5.9-GE-8-ST.tar.gz
tar -xvzf Proton-5.9-GE-8-ST.tar.gz

mkdir -p $HOME/.steam/root/compatibilitytools.d
rm -rf $HOME/.steam/root/compatibilitytools.d/Proton-5.9-GE-8-ST

mv Proton-5.9-GE-8-ST $HOME/.steam/root/compatibilitytools.d


# DELETE TMP FILES
cd .. && rm -rf InstallFiles
