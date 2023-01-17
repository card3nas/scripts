#!/bin/bash

if
grep -q /tmp/ "torghost"

then
cd /tmp/torghost/
pwd
sudo python3 torghost.py -u &&
sudo service tor start &&
sudo macchanger -r eth0 &&
echo "services have started"

IP="curl ifconfig.me"
echo "Current NEW IP is:" 
echo $IP | bash

else
echo "STARTING..."
IP="curl ifconfig.me"
echo "Current IP is:" 
echo $IP | bash
git clone https://github.com/SusmithKrishnan/torghost.git 2>/dev/null &&
wait
cd /tmp/torghost 
\n
pwd
sudo python3 torghost.py -u &&
sudo service tor start &&
sudo macchanger -r eth0 &&
wait
echo "services have started"
IP="curl ifconfig.me"
echo "Current NEW IP is:" 
echo $IP | bash
fi
