#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "Installing Erlang/Elixir \n\n"

printf "\n Running Update \n\n"
sudo apt-get update

printf "\n installing ASDF to manage installs \n\n"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
# The following steps are for bash. If you’re using something else, do the
# equivalent for your shell.
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc # optional
source ~/.bashrc

printf "\n Installing Erlang \n\n"
asdf plugin-add erlang

printf "\n Installing Elixir \n\n"
asdf plugin-add elixir

printf "\n----------------------- DONE ------------------------\n"
