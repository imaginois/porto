#!/bin/sh
cd /var/www/penates
sudo npm i -g yarn webpack webpack-dev-server
sudo yarn install
yarn run build