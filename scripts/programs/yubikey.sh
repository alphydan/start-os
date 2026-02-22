#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "Installing Yubikey Manager\n"
# https://support.yubico.com/hc/en-us/articles/360016649039-Enabling-the-Yubico-PPA-on-Ubuntu
sudo add-apt-repository ppa:yubico/stable && sudo apt-get update

sudo apt install yubikey-manager
sudo apt install yubikey-personalization-gui
sudo apt install libpam-yubico
sudo apt install libpam-u2f
sudo apt install yubikey-manager-qt
sudo apt install yubioath-desktop
