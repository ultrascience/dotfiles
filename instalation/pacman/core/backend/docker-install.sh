#1/bin/bash

# Install docker an docker-compose on arch linux
sudo pacman -S docker docker-compose

# Docker without sudo
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo systemctl enable docker
sudo systemctl start docker


