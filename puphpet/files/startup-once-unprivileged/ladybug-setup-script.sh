#!/bin/sh
if [ ! -f '/usr/local/bin/composer' ]; then
    echo " @@@@@ Composer is not installed on this machine. Type sudo apt-get install composer to install."
    exit 2
fi

echo "########## Start Ladybug setup script ##########"
sudo apt-get autoremove -y
sudo apt-get install libapache2-mod-php php-mbstring php-mysql -y
sudo a2dismod worker
echo "Restarting apache service:"
sudo service apache2 restart
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo "Remove ladybug directory if present"
sudo rm -Rf /var/www/ladybug


echo "Downloading ladybug repo..."
cd /var/www/
sudo mkdir ladybug
sudo chmod 0777 ladybug
ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts
git clone git@bitbucket.org:minervanetworks/ladybug.git

wait

# chmod 755 $(find /path/to/base/dir -type d)
# chmod 644 $(find /path/to/base/dir -type f)

sudo chmod -R 0777 /var/www/ladybug
sudo chown -R $USER:$(id -gn $USER) /home/vagrant/.config
sudo chown -R $USER $HOME/.composer

cp /vagrant/puphpet/files/dot/ladybug/.env /var/www/ladybug/.env

cd /var/www/ladybug/
echo $PWD
sudo chmod -R 0777 /var/www/ladybug
ls -la
composer dump-autoload
composer install --no-scripts

php artisan migrate
php artisan db:seed
# composer dump-autoload --optimize

# sudo npm i -g npm@^4



cd /var/www/ladybug/
# sudo composer update
php artisan key:generate

# echo "Setup gulp globally:"
# npm i gulp
# npm i gulp-bower
# npm i laravel-elixir

echo "Delete node_modules"
sudo rm -Rf node_modules

ls -la

npm list -g --depth=0

echo "Running yarn"
yarn


# echo "Running npm install:"
# sudo npm i
cd /var/www/ladybug/
node ./node_modules/gulp/bin/gulp.js

sudo find /var/www/ladybug -type d -exec chmod 755 {} +
sudo find /var/www/ladybug -type f -exec chmod 744 {} +


cd /var/www/ladybug/
sudo chgrp -R www-data storage bootstrap/cache
sudo chmod -R ug+rwx storage bootstrap/cache

sudo chown -Rf www-data:www-data /var/www/ladybug


echo "Restarting apache service:"
sudo service apache2 restart

wait
exit 0
