#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "\n-----------------------------\n\n"
printf "🗒️ Installing Typora\n"
printf "\n-----------------------------\n\n"

if command -v typora >/dev/null 2>&1; then
    printf "Typora is already installed.\n"
    exit 0
else
    printf "Typora is not installed. Proceeding with installation.\n"
    # add Typora's key
    curl -fsSL https://downloads.typora.io/typora.gpg | sudo tee /etc/apt/keyrings/typora.gpg > /dev/null

    # add Typora's repository securely
    echo "deb [signed-by=/etc/apt/keyrings/typora.gpg] https://downloads.typora.io/linux ./" | sudo tee /etc/apt/sources.list.d/typora.list

    sudo apt update

    # install typora
    sudo apt install typora
fi
