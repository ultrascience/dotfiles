#!/bin/bash

npm install -g awk-language-server
npm i -g bash-language-server
npm i -g vscode-langservers-extracted
npm install -g cssmodules-language-server
npm install -g dockerfile-language-server-nodejs
npm install -g emmet-ls
npm install -g @tailwindcss/language-server
npm install -g typescript typescript-language-server
npm install -g vim-language-server
npm install -g pyright

nvim -c ":TSInstall python" -c ":q"
nvim -c ":TSInstall java" -c ":q"
nvim -c ":TSInstall html" -c ":q"
nvim -c ":TSInstall css" -c ":q"
nvim -c ":TSInstall javascript" -c ":q"
nvim -c ":TSInstall typescript" -c ":q"
nvim -c ":TSInstall json" -c ":q"
