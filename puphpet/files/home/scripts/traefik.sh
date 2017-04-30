#!/bin/sh

cat << EOF

 ____ ____ ____ ____ ____ ____ ____ 
||T |||R |||A |||E |||F |||I |||K ||
||__|||__|||__|||__|||__|||__|||__||
|/__\|/__\|/__\|/__\|/__\|/__\|/__\|


EOF


# sudo docker run -d -p 7070:7070 -p 70:70 -v $PWD/traefik.toml:/etc/traefik/traefik.toml traefik
sudo docker-compose up -d

