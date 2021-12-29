#!/bin/bash

echo "Configurando una contraseña para el usuario aldo"
sudo passwd aldo

echo "Cambiando repositorios a debian 11"
sudo rm /etc/apt/sources.list
sudo mv sources.list /etc/apt/

# Actualizando sistema a android 11
sudo apt update
sudo dist-upgrade -y

source /home/aldo/dotfiles/instalation/apt/minimal/zsh-install.sh
source /home/aldo/dotfiles/instalation/apt/minimal/pip3-install.sh
source /home/aldo/dotfiles/instalation/apt/minimal/java11-install.sh
source /home/aldo/dotfiles/instalation/apt/minimal/ranger-install.sh
source /home/aldo/dotfiles/instalation/apt/minimal/rg-install.sh
source /home/aldo/dotfiles/instalation/apt/minimal/compress-tools-install.sh
source /home/aldo/dotfiles/instalation/apt/minimal/nvm-install.sh
source /home/aldo/dotfiles/instalation/apt/minimal/docker-install.sh
source /home/aldo/dotfiles/instalation/apt/minimal/docker-images-install.sh
source /home/aldo/dotfiles/instalation/apt/minimal/nvim-install.sh
source /home/aldo/dotfiles/instalation/apt/minimal/github-generate-key.sh
