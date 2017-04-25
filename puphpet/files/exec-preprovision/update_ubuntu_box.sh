#!/bin/sh
rm -f /etc/apt/sources.list.d/repo.mysql.com-apt.list
apt-get update
apt-get upgrade -y
