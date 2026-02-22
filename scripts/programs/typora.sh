#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "🔑 Installing Typora\n"


# add Typora's key

curl -fsSL https://downloads.typora.io/typora.gpg | sudo tee /etc/apt/keyrings/typora.gpg > /dev/null

# add Typora's repository securely

echo "deb [signed-by=/etc/apt/keyrings/typora.gpg] https://downloads.typora.io/linux ./" | sudo tee /etc/apt/sources.list.d/typora.list

sudo apt update

# install typora

sudo apt install typora
