#!/bin/bash
echo "Installing zsh and aur support..."
source /home/aldo/dotfiles/instalation/pacman/core/terminal/zsh-install.sh
source /home/aldo/dotfiles/instalation/pacman/core/terminal/ssh-install.sh
source /home/aldo/dotfiles/instalation/pacman/core/terminal/paru-install.sh

echo "Installing drivers for arch linux..."
source /home/aldo/dotfiles/instalation/pacman/core/drivers/firmware-install.sh
source /home/aldo/dotfiles/instalation/pacman/core/drivers/wifi-install.sh

echo "Installing filemanager..."
source /home/aldo/dotfiles/instalation/pacman/core/filemanager/range-install.sh
source /home/aldo/dotfiles/instalation/pacman/core/filemanager/rg-install.sh
source /home/aldo/dotfiles/instalation/pacman/core/filemanager/compress-tools-install.sh

echo "Installing git"
source /home/aldo/dotfiles/instalation/pacman/core/git/git-install.sh

echo "Generating github ssh key..."
source /home/aldo/dotfiles/instalation/pacman/core/git/github-generate-key.sh

echo "Installing nvim and plugins..."
source /home/aldo/dotfiles/instalation/pacman/core/texteditor/nvim-install.sh
source /home/aldo/dotfiles/instalation/pacman/core/texteditor/pip-install.sh
source /home/aldo/dotfiles/instalation/pacman/core/texteditor/nvim-complements-install.sh
source /home/aldo/dotfiles/instalation/pacman/core/texteditor/formatters-install.sh
source /home/aldo/dotfiles/instalation/pacman/core/texteditor/lua-install.sh

echo "System installation finished!"
source info-system.sh
