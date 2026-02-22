#!/bin/bash

# Update Ubuntu and get standard repository programs
./aptinstall.sh

# Run all programs/ install scripts
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade

# Copy dot-files
cp ./dotfiles/.bash_aliases ~/
cp ./dotfiles/.emacs ~/

# Recreate backup infrastructure
./backup_infra.sh


# Fun hello
cowsay "You are ready to go!"


printf "\n\n ~~~~~~~  REMINDERS ~~~~~~~~ \n\n"
printf " - install VPN: https://protonvpn.com/download-linux"
