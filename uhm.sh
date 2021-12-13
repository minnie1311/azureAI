#!/bin/bash

sudo apt update
sudo apt-get install git build-essential libapparmor-dev pkg-config gawk firejail -y

sudo wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2021_10_0_1_amd64_1f8b2f019f.deb
sudo dpkg -i cloudflare_warp_2021_10_0_1_amd64_1f8b2f019f.deb
 sudo apt --fix-broken install -y

sudo systemctl enable --now warp-svc.service
echo Y | warp-cli set-mode doh
warp-cli register

wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb
sudo dpkg -i uam-latest_amd64.deb
cd /opt/uam
sudo ufw allow 1000:65000/tcp
sudo ufw allow 1000:65000/udp
wget https://updates.peer2profit.com/p2pclient_0.56_amd64.deb
sudo dpkg -i p2pclient_0.56_amd64.deb

warp-cli connect
sudo tmux new-session -d -s 1 './uam --pk D4BE04937A8AC67F3F01B9588D39C8C2A3875F45C2E93CC37DCC5D0DF71A9266 --no-ui'
sudo tmux new-session -d -s 1 'p2pclient --login mickeypp@gmail.com'
