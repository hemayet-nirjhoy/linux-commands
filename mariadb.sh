#! /bin/bash

#Reinstall MariaDB:

sudo rm -rf /var/lib/apt/lists
sudo mkdir /var/lib/apt/lists
sudo apt update && sudo apt upgrade
sudo nano /etc/resolv.conf (Update Nameserver)
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv F1656F24C74CD1D8
sudo apt update && sudo apt upgrade
sudo apt-get remove --purge mysql*
sudo apt-get remove --purge mysql
sudo apt-get remove --purge mariadb
sudo apt-get --purge remove mariadb-server
sudo apt install mariadb-server
sudo mysql_secure_installation
sudo systemctl status mariadb
systemctl status mysql
