#!/bin/sh
if [ ! -f '/usr/local/bin/composer' ]; then
    echo " @@@@@ Composer is not installed on this machine. Type sudo apt-get install composer to install."
    exit 2
fi

cd /var/www/ladybug
composer dump-autoload
composer install --no-scripts

sudo apt-get autoremove -y
sudo apt-get install nodejs -y
# sudo apt-get install libapache2-mod-php
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo chown -R $USER:$(id -gn $USER) /home/vagrant/.config
sudo npm i -g npm@^4
sudo npm i -g gulp
sudo npm i
gulp


#php artisan migrate
#php artisan db:seed
php artisan key:generate
composer dump-autoload --optimize


wait
exit 0
