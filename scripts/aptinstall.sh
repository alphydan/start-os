#!/bin/bash

sudo apt update && sudo apt upgrade && sudo apt autoremove

function install {
  which $1 &> /dev/null  # when which returns nothing it is not installed

  if [ $? -ne 0 ]; then # if it is not installed "0" was the previous output  ($?)
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install curl
install htop
install nmap
install tree
install pdftk
install gnome-tweaks
install mlocate

# Dev
install emacs
install git
install anki

# Web
install filezilla
install pandoc

# Documents (PDF)
install okular
# Media
install openshot
install youtube-dl
install qbittorrent

# Security
install keepassxc


# Image processing
install gimp
install jpegoptim
install optipng
install inkscape
install gwenview

# Fun stuff
install cowsay
install sl
