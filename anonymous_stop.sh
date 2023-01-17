#!/bin/bash

echo "Stopping services"
IP="curl ifconfig.me"
echo "Current masked IP is:" 
echo $IP | bash
wait
sudo python3 /opt/tools/torghost/torghost.py -x &&
sleep 3
sudo service tor stop &&
sleep 3
sudo macchanger -p eth0 &&
sleep 2
echo "services have stopped"
