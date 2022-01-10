#!/bin/bash

# Instala jetbrains font para o i3
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip

# Download Iosevka fonts from github nerdfonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Iosevka.zip

mkdir -p ~/.local/share/fonts

mv JetBrainsMono.zip ~/.local/share/fonts/
mv Iosevka.zip ~/.local/share/fonts/

cd ~/.local/share/fonts/ && unzip JetBrainsMono.zip && unzip Iosevka.zip
rm *.zip

fc-cache -f -v
