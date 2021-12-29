#!/bin/bash

sudo pacman -S xorg-server xorg-xinit xorg-utils xorg-server-utils
sudo pacman -S xf86-video-intel
sudo pacman -S mesa mesa-demos

# Install xrandr on Arch Linux
sudo pacman -S xorg-xrandr

# Install xev on Arch Linux
sudo pacman -S xorg-xev

# Install xprop on Arch Linux
sudo pacman -S xorg-xprop
