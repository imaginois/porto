echo "-------------------"
echo $(uname -r)
echo $(pwd)
echo $(whoami)
echo "-------------------"

apt-get install lsb-release
apt-get install figlet
cp /vagrant/puphpet/files/motd/* /etc/update-motd.d/
chmod +x /etc/update-motd.d/*
rm /etc/motd
ln -s /var/run/motd /etc/motd