#!/bin/bash
# This script will download and add domains from the rep to whitelist.txt file.
# Project homepage: https://github.com/anudeepND/whitelist and https://github.com/Freekers/whitelist
# Licence: https://github.com/anudeepND/whitelist/blob/master/LICENSE
# Created by Anudeep | Modified by Freekers
#================================================================================
TICK="[\e[32m ✔ \e[0m]"


echo -e " \e[1m This script will download and add domains from both repos your whitelist \e[0m"
sleep 1
echo -e "\n"


if [ $(dpkg-query -W -f='${Status}' gawk 2>/dev/null |  grep -c "ok installed") -eq 0 ];
then
  echo -e " [...] \e[32m Installing gawk... \e[0m"
  sudo apt-get install gawk -qq > /dev/null
  wait
  echo -e " ${TICK} \e[32m Finished \e[0m"
fi


sudo curl -sS https://raw.githubusercontent.com/anudeepND/whitelist/master/domains/whitelist.txt >> /etc/pihole/whitelist.txt
echo -e " ${TICK} \e[32m Adding anudeepNDs domains to whitelist... \e[0m"
sleep 0.5
sudo curl -sS https://raw.githubusercontent.com/Freekers/whitelist/master/domains/whitelist.txt >> /etc/pihole/whitelist.txt
echo -e " ${TICK} \e[32m Adding Freekers domains to whitelist... \e[0m"
sleep 0.5
echo -e " ${TICK} \e[32m Removing duplicates... \e[0m"
sudo gawk -i inplace '!a[$0]++' /etc/pihole/whitelist.txt
wait
echo -e " ${TICK} \e[32m Pi-hole gravity rebuilding lists...This may take a while \e[0m"
pihole -g > /dev/null
wait
echo -e " ${TICK} \e[32m Done! \e[0m"


echo -e " \e[1m  Star us on GitHub, https://github.com/anudeepND/whitelist and https://github.com/Freekers/whitelist \e[0m"
echo -e " \e[1m  Happy AdBlocking :)\e[0m"
echo -e "\n\n"
