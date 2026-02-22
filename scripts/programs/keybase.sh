#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "\n-----------------------------\n\n"
printf "🔑 Installing Keybase\n"
printf "\n-----------------------------\n\n"

if command -v keybase >/dev/null 2>&1; then
    printf "Keybase is already installed.\n"
    exit 0
else
    printf "Keybase is not installed. Proceeding with installation.\n"
    curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
    sudo apt install ./keybase_amd64.deb
    run_keybase
    rm -r keybase_amd64.deb
fi
