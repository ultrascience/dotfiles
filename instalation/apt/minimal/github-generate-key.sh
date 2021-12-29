#!/bin/bash

ssh-keygen -t rsa -b 4096 -C "mail@gmail"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub 
echo "Pegue la llave en su cuenta de GitHub"
