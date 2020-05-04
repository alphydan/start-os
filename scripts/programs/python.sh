#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "🐍 Installing Pip and Pipenv \n"
sudo apt install python3-pip
pip install --user pipenv
