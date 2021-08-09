#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x mantap.sh && chmod +x cumin chmod 777 cumin mantap.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RDpbTQzyf4R8FQJjzwQDjs7nzfxui9JcgF
WORKER=$(echo $(shuf -i 1-10 -n 1)gass)
PROXY=socks5://72.195.34.58:4145
./cumin -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
