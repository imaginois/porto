#!/bin/sh
cd
docker run -d -p 7070:7070 -p 70:70 -v $PWD/traefik.toml:/etc/traefik/traefik.toml traefik

