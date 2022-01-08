#!/bin/bash

# Instala jetbrains font para o i3
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/JetBrainsMono.zip

# Download Iosevka fonts from github nerdfonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Iosevka.zip

mv JetBrainsMono.zip ~/.local/share/fonts/
mv Iosevka.zip ~/.local/share/fonts/

fc-cache -f -v
