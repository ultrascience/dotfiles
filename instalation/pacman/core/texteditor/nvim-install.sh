#/bin/bash

# Install packaer nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install neovim on arch linux
sudo pacman -S --noconfirm neovim

# Install treesitter on arch linux
sudo pacman -S --noconfirm tree-sitter

