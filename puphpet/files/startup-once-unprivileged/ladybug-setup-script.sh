#!/bin/sh
if [ ! -f '/usr/local/bin/composer' ]; then
    echo " @@@@@ Composer is not installed on this machine. Type sudo apt-get install composer to install."
    exit 2
fi

echo "Downloading ladybug repo..."
cd /var/www/
ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts
git clone git@bitbucket.org:minervanetworks/ladybug.git

cd /var/www/ladybug
composer dump-autoload
composer install --no-scripts

#php artisan migrate
#php artisan db:seed
composer dump-autoload --optimize
composer update
php artisan key:generate

sudo apt-get autoremove -y
sudo apt-get install libapache2-mod-php php-mbstring php-mysql -y
sudo a2dismod worker
echo "Restarting apache service:"
sudo service apache2 restart
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo chown -R $USER:$(id -gn $USER) /home/vagrant/.config
# sudo npm i -g npm@^4
# 
sudo npm i -g gulp

echo "Setup npm:"
sudo npm i --save-dev
gulp




wait
exit 0
