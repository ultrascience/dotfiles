#!/bin/bash

# Install tigervnc server on debian
sudo apt install -y tigervnc-standalone-server
vncserver
mkdir -p ~/.vnc
echo '#!/bin/bash' > ~/.vnc/xstartup
echo 'exec i3' >> ~/.vnc/xstartup
