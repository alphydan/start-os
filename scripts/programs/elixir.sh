#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "Installing Erlang\n\n"
wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb
sudo dpkg -i erlang-solutions_2.0_all.deb

printf "\n Running Update \n\n"
sudo apt-get update

printf "\n installing OTP \n\n"
sudo apt-get install esl-erlang

printf "\n Installing Elixir \n\n"
sudo apt-get install elixir
rm -r erlang-solutions_2.0_all.deb
