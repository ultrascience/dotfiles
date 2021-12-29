#!/bash/bin
sudo pacman -S gnome

# Enable gdm service
sudo systemctl enable gdm.service
sudo systemctl start gdm.service
