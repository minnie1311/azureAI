#!/bin/bash

# This script is used to start the p2p-service.
# Will only support Debian and Ubuntu based systems.



function install_dependencies() {
    echo "Installing dependencies..."
    apt update &>/dev/null && apt install curl wget -y
}

function install_p2p_service() {
    echo "Installing p2p-service..."
    wget https://updates.peer2profit.com/p2pclient_0.56_amd64.deb -O p2p-service.deb
    dpkg -i p2p-service.deb
    rm -f p2p-service.deb
}

function start_p2p_service() {
    echo "Starting p2p-service..."
    ip=$(curl -4fsSLk ip.sb)
    cat > /etc/systemd/system/peer2profit.service  << EOF
[Unit]
Description=peer2profit
[Service]
Type=simple
ExecStart=/usr/bin/p2pclient -l mickeypp@gmail.com -n "$ip;1.1.1.1,8.8.8.8"
TimeoutSec=15
Restart=always
[Install]
WantedBy=multi-user.target
EOF
    
    systemctl daemon-reload
    systemctl enable peer2profit
    systemctl start peer2profit
    systemctl status peer2profit
}

function main() {
    install_dependencies
    install_p2p_service
    start_p2p_service
}

main "$@"
