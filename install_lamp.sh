#!/bin/sh

sudo apt-get update
sudo apt-get install apache2

# To see server's public IP address
#curl http://icanhazip.com

sudo apt-get install mysql-server php5-mysql
sudo mysql_install_db

sudo mysql_secure_installation
