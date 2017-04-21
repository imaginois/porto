#!/bin/sh
	# json-server /var/www/radio/api/stb.json --port 4000
	# json-server /var/www/radio/api/vstb.json --port 4001
docker run -d -p 5000:80 -v /var/www/radio/api/vstb.json:/data/db.json clue/json-server
docker run -d -p 5001:80 -v /var/www/radio/api/stb.json:/data/db.json clue/json-server