#!/bin/sh
	# json-server /var/www/radio/api/stb.json --port 4000
	# json-server /var/www/radio/api/vstb.json --port 4001
	# 
echo "### Setup Alpine-mpich cluster"
cd 
rm -Rf alpine-mpich/
git clone https://github.com/NLKNguyen/alpine-mpich.git
cd alpine-mpich/cluster/
sudo ./cluster.sh up size=10
sudo ./cluster.sh scale size=20
sudo ./cluster.sh exec mpirun hostname
sudo ./cluster.sh exec mpirun ./mpi_hello_world
