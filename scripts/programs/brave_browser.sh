#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "\n-----------------------------\n\n"
printf "Installing Brave Browser\n\n"
printf "\n-----------------------------\n\n"

if command -v brave-browser >/dev/null 2>&1; then
    printf "Brave Browser is already installed.\n"
    exit 0
else
    printf "Brave Browser is not installed. Proceeding with installation.\n"
    printf "verifying signature\n\n"
    curl -fsSLO "https://dl.brave.com/install.sh{,.asc}" && \
    gpg --keyserver hkps://keys.openpgp.org --recv-keys D16166072CACDF2C9429CBF11BF41E37D039F691 && \
    gpg --verify install.sh.asc && \
    sh install.sh
fi
