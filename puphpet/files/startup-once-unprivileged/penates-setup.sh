#!/bin/sh
cd /var/www/penates
sudo apt-get upgrade nodejs -y
sudo npm i -g yarn webpack@3 webpack-dev-server
sudo yarn install
yarn run build