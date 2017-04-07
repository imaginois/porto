#!/bin/sh
cd /var/www/vstb/ML/src
sudo npm install
grunt build --skin=revgo
grunt css --skin=revgo

cd /var/www/vstb/staging/src
sudo npm install
grunt build --skin=revgo
grunt css --skin=revgo
