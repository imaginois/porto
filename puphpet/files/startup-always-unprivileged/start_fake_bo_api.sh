#!/bin/sh
    # json-server /var/www/radio/api/stb.json --port 4000
    # json-server /var/www/radio/api/vstb.json --port 4001
    # 
echo "### Setup Fake BO"
sudo docker run -d -p 6001:80 -v  /home/vagrant/api/stb.json:/data/db.json clue/json-server
sudo docker run -d -p 6002:80 -v  /home/vagrant/api/vstb.json:/data/db.json clue/json-server

