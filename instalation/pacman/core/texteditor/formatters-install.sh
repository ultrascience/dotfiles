#!/bin/bash
luarocks install --server=https://luarocks.org/dev luaformatter

# Install shfmt on arch linux
sudo pacman -S shfmt

npm install --save-dev --save-exact prettier

paru texlive-latexindent-meta 
