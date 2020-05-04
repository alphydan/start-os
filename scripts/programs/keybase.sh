#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "🔑 Installing Keybase\n"
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo apt install ./keybase_amd64.deb
run_keybase
rm -r keybase_amd64.deb
