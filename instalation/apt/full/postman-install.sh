#!/bin/bash

# wget postman on ~/Downloads/
wget https://dl.pstmn.io/download/latest/linux64 -O ~/Downloads/postman.tar.gz
tar -xzf ~/Downloads/postman.tar.gz -C ~/Downloads/
rm ~/Downloads/postman.tar.gz
chmod +x ~/Downloads/Postman/Postman
