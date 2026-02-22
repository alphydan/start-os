#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "\n-----------------------------\n\n"
printf "🔑 Installing Yubikey Manager\n"
printf "\n-----------------------------\n\n"

if command -v ykman >/dev/null 2>&1; then
    printf "Yubikey Manager is already installed.\n"
    exit 0
else
    printf "Yubikey Manager is not installed. Proceeding with installation.\n"
    # https://support.yubico.com/hc/en-us/articles/360016649039-Enabling-the-Yubico-PPA-on-Ubuntu
    sudo add-apt-repository ppa:yubico/stable && sudo apt-get update

    sudo apt install yubikey-manager
    sudo apt install yubikey-personalization-gui
    sudo apt install libpam-yubico
    sudo apt install libpam-u2f
    sudo apt install yubikey-manager-qt
    sudo apt install yubioath-desktop
fi
