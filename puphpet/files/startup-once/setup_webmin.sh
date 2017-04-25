#!/bin/sh

cd /etc/apt/sources.list.d/
touch webmin.list
echo "deb http://download.webmin.com/download/repository sarge contrib" >> webmin.list
echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" >> webmin.list
cd /tmp
wget http://www.webmin.com/jcameron-key.asc
apt-key add jcameron-key.asc
apt-get update
apt-get install webmin -y
sudo ufw allow 10000
sudo ufw allow 80
