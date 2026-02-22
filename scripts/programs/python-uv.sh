#!/bin/bash

printf "\n\n RUNNING INSTALL SCRIPTS \n\n"
printf "\n-----------------------------\n\n"
printf "🐍 Installing UV for python \n"
printf "\n-----------------------------\n\n"

if command -v uv >/dev/null 2>&1; then
    printf "UV is already installed.\n"
    exit 0
else
    printf "UV is not installed. Proceeding with installation.\n"
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi
