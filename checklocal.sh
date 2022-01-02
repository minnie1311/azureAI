#!/bin/bash
  if [ -f /etc/rc.local ]; then 
echo "da co rc.local"
  else
wget https://raw.githubusercontent.com/minnie1311/azureAI/master/rc-local.service
sudo mv rc-local.service /etc/systemd/system/rc-local.service

wget https://raw.githubusercontent.com/haidanglx/haidanglxx/master/rc.local1
sudo mv rc.local1 /etc/rc.local
sudo chmod +x /etc/rc.local
sudo systemctl enable rc-local
fi
exit
