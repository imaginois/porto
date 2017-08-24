#!/bin/bash

echo "I am provisioning a #{HOSTNAME_MACHINE} machine"
	apt-get update
	apt-get install -y vim git curl
	echo "Installing required graphical libraries for Electron"
	apt-get install -y libgtk2.0-0
	apt-get install -y libxss1
	apt-get install -y GConf2
	apt-get install -y libnss3
	# apt-get install -y libcanberra-gtk*
	echo "Installing electron..."
	npm install electron -g

	echo "Installing Atom text editor"
	cd /tmp
	wget https://github.com/atom/atom/releases/download/v1.19.3/atom-amd64.deb -o atom.deb
	dpkg -i atom.deb

	echo ':::: setting up liquidprompt to vagrant machine ::::'

	echo "Installing liquidprompt..."
	cd /home/vagrant/
	git clone https://github.com/nojhan/liquidprompt.git
	source liquidprompt/liquidprompt

	echo "Setting up liquidprompt to the .bashrc folder"
	echo '# Only load Liquid Prompt in interactive shells, not from a script or from scp'  >> /home/vagrant/.bashrc
	echo '[[ $- = *i* ]] && source /home/vagrant/liquidprompt/liquidprompt' >> /home/vagrant/.bashrc
