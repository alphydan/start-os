#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "\n-----------------------------\n\n"
printf "🎵 Installing Spotify \n"
printf "\n-----------------------------\n\n"

if command -v spotify >/dev/null 2>&1; then
    printf "Spotify is already installed.\n"
    exit 0
else
    printf "Spotify is not installed. Proceeding with installation.\n"
    curl -sS https://download.spotify.com/debian/pubkey_5384CE82BA52C83A.asc | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb https://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update && sudo apt-get install spotify-client
fi
