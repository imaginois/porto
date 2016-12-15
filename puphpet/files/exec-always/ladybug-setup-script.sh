#!/bin/sh
if ! [[ -f '/usr/local/bin/composer' ]]; then
    echo " @@@@@ Composer is not installed on this machine. Type sudo apt-get install composer to install."
    exit 0
fi

# if [[ $(hostname) == 'ladybug' ]]; then
    cd /var/www/ladybug
    composer dump-autoload
    composer install --no-scripts
    composer install && composer update
    php artisan migrate
    sudo ln -s /usr/bin/nodejs /usr/bin/node
    sudo npm install
    sudo bower install
    wait
    exit 0
# fi
