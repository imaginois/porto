#!/bin/sh

cat << EOF

 +-+-+-+-+ +-+-+-+-+-+ +-+-+-+-+-+
 |V|S|T|B| |S|E|T|U|P| |S|T|A|R|T|
 +-+-+-+-+ +-+-+-+-+-+ +-+-+-+-+-+

EOF

cd /var/www/vstb/ML/src
sudo npm install
sudo grunt build --skin=revgo
sudo grunt css --skin=revgo

cd /var/www/vstb/staging/src
sudo npm install
grunt build --skin=revgo
grunt css --skin=revgo


cat << EOF

 +-+-+-+-+ +-+-+-+-+-+ +-+-+-+
 |V|S|T|B| |S|E|T|U|P| |E|N|D|
 +-+-+-+-+ +-+-+-+-+-+ +-+-+-+

EOF