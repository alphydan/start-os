#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "\n-----------------------------\n\n"
printf "Installing Brave Browser\n\n"
printf "\n-----------------------------\n\n"

curl -fsS https://dl.brave.com/install.sh | sh

printf "verifying signature\n\n"
curl -fsSLO "https://dl.brave.com/install.sh{,.asc}" && gpg --keyserver hkps://keys.openpgp.org --recv-keys D16166072CACDF2C9429CBF11BF41E37D039F691 && gpg --verify install.sh.asc
