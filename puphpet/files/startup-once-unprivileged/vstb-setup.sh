#!/bin/sh
cd /var/www/vstb/ML/src
sudo npm install
grunt build --skin=revgo
grunt css --skin=revgo
