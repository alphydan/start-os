#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "🔑 Installing Typora\n"

wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
sudo add-apt-repository 'deb https://typora.io/linux ./'
sudo apt-get update
sudo apt-get install typora
