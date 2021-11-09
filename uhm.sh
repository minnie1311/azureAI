#!/bin/bash

sudo apt update
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
cd /opt/uam
sudo ufw allow 1000:65000/tcp
sudo ufw allow 1000:65000/udp
sudo tmux new-session -d -s 1 './uam --pk D4BE04937A8AC67F3F01B9588D39C8C2A3875F45C2E93CC37DCC5D0DF71A9266 --no-ui'
