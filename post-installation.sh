#!/bin/bash

nvim -c ":LspInstall pyright tsserver css html tailwindcss" -c ":q"
nvim -c ":TSInstall python" -c ":q"
