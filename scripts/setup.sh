#!/bin/bash

# Update Ubuntu and get standard repository programs
./aptinstall.sh

# Run all programs/ install scripts
for f in programs/*.sh; do bash "$f" -H; done

# Get all upgrades
sudo apt upgrade

# Fun hello
cowsay "You are ready to go!"
