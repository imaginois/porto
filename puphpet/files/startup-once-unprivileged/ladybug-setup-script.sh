#!/bin/sh
if [[ ! -f '/usr/local/bin/composer' ]]; then
    echo " @@@@@ Composer is not installed on this machine. Type sudo apt-get install composer to install."
    exit 1
fi

cd /var/www/ladybug
composer dump-autoload
composer install --no-scripts

sudo apt-get install nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm i -g npm@^4
sudo npm i
gulp


#php artisan migrate
#php artisan db:seed
php artisan key:generate
composer dump-autoload --optimize


wait
exit 0
