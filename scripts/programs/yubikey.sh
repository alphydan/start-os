#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "Installing Yubikey Manager\n"
# https://support.yubico.com/hc/en-us/articles/360016649039-Enabling-the-Yubico-PPA-on-Ubuntu
sudo add-apt-repository ppa:yubico/stable && sudo apt-get update
sudo apt-get install yubikey-manager-qt
sudo apt-get install yubioath-desktop
sudo apt-get install yubikey-personalization-gui
