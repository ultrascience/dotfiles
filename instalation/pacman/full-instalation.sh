#!/bin/bashi

echo "Installing window manager..."
source /home/aldo/dotfiles/instalation/pacman/full/windowmanager/xorg-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/windowmanager/i3-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/windowmanager/terminals-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/windowmanager/polybar-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/windowmanager/brave-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/windowmanager/picom-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/windowmanager/gnome-install.sh

echo "Installing multimedia..."
source /home/aldo/dotfiles/instalation/pacman/full/multimedia/pulseaudio-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/multimedia/audio-video-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/multimedia/fonts-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/multimedia/bluetooth-install.sh

echo "Installing pdf viewer..."
source /home/aldo/dotfiles/instalation/pacman/full/pdf/zathura-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/pdf/latex-install.sh

echi "Installing development..."
source /home/aldo/dotfiles/instalation/pacman/full/development/postman-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/development/anki-install.sh
source /home/aldo/dotfiles/instalation/pacman/full/development/taskwarrior-install.sh
