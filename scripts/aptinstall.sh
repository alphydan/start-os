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
install pdftk-java
install anacron

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
install audacity
install qbittorrent

# Security
install keepassxc
install clamav

# Image processing
install gimp
install inkscape

# Fun stuff
install cowsay
install sl
