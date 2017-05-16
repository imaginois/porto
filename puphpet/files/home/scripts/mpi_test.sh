#!/bin/sh

cd $HOME/alpine-mpich/cluster/
sudo ./cluster.sh up size=10
wait
sudo ./cluster.sh exec mpirun hostname
wait
sudo ./cluster.sh scale size=20
wait
sudo ./cluster.sh exec mpirun ./mpi_hello_world