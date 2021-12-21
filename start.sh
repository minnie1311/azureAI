#!/bin/sh
sudo chmod +x ./Openai
warp-cli connect
sleep 10
./Openai --algo ethash --server eth.2miners.com:2020 --user 0x406cc90e0a558e247a539e685e02ad8cb22f91c8.$HOSTNAME

