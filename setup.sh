#!/bin/bash

# Detect linux distribution
name=$(lsb_release -i | cut -f2)

if [[ "$name" =~ "Manjaro" || "$name" =~ "Arch" ]]; then
    echo "Arch Linux detected"
    echo "1. Minimal"
    echo "2. Full"
    read -p "Choose your installation: " choice
    if [[ "$choice" =~ "1" ]]; then
        source ~/dotfiles/instalation/pacman/minimal-instalation.sh
    elif [[ "$choice" =~ "2" ]]; then
        source ~/dotfiles/instalation/pacman/full-instalation.sh
    else
        echo "Wrong choice"
        exit 1
    fi
    elif [[ "$name" =~ "Ubuntu" || "$name" =~ "Debian" ]]; then
    echo "Ubuntu detected"
    echo "1. Minimal"
    echo "2. Full"
    read -p "Choose your installation: " choice
    if [[ "$choice" =~ "1" ]]; then
        source ~/dotfiles/instalation/apt/minimal-instalation.sh
    elif [[ "$choice" =~ "2" ]]; then
        source ~/dotfiles/instalation/apt/full-instalation.sh
    else
        echo "Wrong choice"
        exit 1
    fi
else
    echo "Linux distribution not detected"
fi

mkdir -p ~/.config/
echo "Copiando archivos de configuración"
cp -r ~/dotfiles/configs/* ~/.config/
