#!/bin/bash

# Instala jetbrains font para o i3
wget https://download.jetbrains.com/fonts/JetBrainsMono-1.0.0.zip

# install iosevka font
wget  https://github.com/be5invis/Iosevka/releases/download/v2.2.1/02-iosevka-term-2.2.1.zip
unzip 02-iosevka-term-2.2.1.zip -d iosevka
mkdir ~/.fonts
mv iosevka/ttf/* ~/.fonts/
fc-cache -f -v
