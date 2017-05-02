#!/bin/sh
	# json-server /var/www/radio/api/stb.json --port 4000
	# json-server /var/www/radio/api/vstb.json --port 4001
	# 
echo "### Setup Fake BO"
docker run -d -p 6001:80  -v $HOME/scripts/stb.json:/data/db.json clue/json-server
docker run -d -p 6002:80 -v  $HOME/scripts/vstb.json:/data/db.json clue/json-server