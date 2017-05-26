#!/bin/sh
unlink /home/vagrant/scripts
unlink /home/vagrant/api

ln -s /vagrant/puphpet/files/home/scripts /home/vagrant
ln -s /vagrant/puphpet/files/home/api /home/vagrant

chmod -R 0755 /vagrant/puphpet/files/home
