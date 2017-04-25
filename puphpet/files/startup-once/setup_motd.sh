echo "-------------------"
echo $(uname -r)
echo $(pwd)
echo $(whoami)
echo "-------------------"

apt-get install lsb-release
apt-get install figlet
rm -f /etc/update-motd.d/10-help-text
cp /vagrant/puphpet/files/motd/* /etc/update-motd.d/
chmod +x /etc/update-motd.d/*
rm -Rf /etc/motd
ln -s /var/run/motd /etc/motd