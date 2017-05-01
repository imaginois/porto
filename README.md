# Porto #
#### Portable dev enviroment setup ####

This project aims to bring a unified development environment, 
that is cross-platform, cross-client and technology 
independent. Such unification of environments will
provide developers with more easily configurable, manageable 
and debuggable workflow, thus reducing the work of creation
by removing hard choices and adding automated procedures

The project provides several exquisite sub-modules to increase the ease of work with the technological ecosystem of the company and all potentially incoming project. The default setup provides the following features out of the box bu default:


### Features ###
- Easy to manage and configure
- Supports custom configuration per developer machine
- Apache virtual hosts for all active projects
- Ladybug Web based debugger for remote logging
- traefik: load balancing server, composed of multiple docker container. Has the ability to simulate and replicate multiple clients to a server using a nginx proxy with load balancing pool
- static BO API: provides static Rest API that serves the same structure as the corresponding back-end for the project. It can easily be modified to provide different properties and services
- GOR performance testing pool
- Webmin for GUI management
- As close as possible development environment to the production environment


### Installation ###
* Download and install [Vagrant](https://www.vagrantup.com/downloads.html)
* Download and install [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
* Restart PC
* Get porto repository (//depot/SB/porto/). Map it to the root directory of your workspace.
* Open CMD or Terminal in the directory
* run `vagrant up`

### Troubleshooting ###

* directory **../radio** was not found -> create empty directory in the root directory of your workspace

### API ###
You can find fake back offices running in the virtual machine.

- http://localhost:6002 - vstb
- http://localhost:6001 - stb

- https://localhost:10000 - Webmin 
- https://localhost:8100/adminer.php - Adminer 


### Gor Quick Start guide
#### Installation
To start working with Gor, you need to have a web server running on your machine, and a terminal to run commands. This is already provided for you out of the box in this project.

Note:
_If you are just poking around, you can quickly start the server by calling gor file-server :8000, this will start a simple file server of the current directory on port 8000._


#### Capturing web traffic
This command says to listen for all network activity happening on port 8000 and log it to stdout. If you are familiar with `tcpdump`, we are going to implement similar functionality.
`sudo gor --input-raw :8000 --output-stdout`

Make a few requests by opening `http://localhost:8000` in your browser, or just by calling curl in terminal `curl http://localhost:8000`. You should see that `gor` outputs all the HTTP requests and responses right to the terminal window where it is running.

__Gor is not a proxy:__ you do not need to put 3-rd party tool to your critical path. Instead `Gor` just silently analyzes the traffic of your application and does not affect it anyhow.

#### Replaying
Instead of `--output-stdout` we will use `--output-http` and provide URL of second server: 
`sudo gor --input-raw :8000 --output-http="http://localhost:8001"`

Make few requests to first server. You should see them replicated to the second one, voila!

#### Saving requests to file and replaying them later
Sometimes it's not possible to replay requests in real time; `Gor` allows you to save requests to the file and replay them later.

First use `--output-file` to save them: `sudo gor --input-raw :8000 --output-file=requests.gor`. This will create new file and continuously write all captured requests to it.

Let's re-run Gor, but now to replay requests from file: `gor --input-file requests.gor --output-http="http://localhost:8001"`. You should see all the recorded requests coming to the second server, and they will be replayed in the same order and with exactly same timing as they were recorded.





### Wiki ###
https://bitbucket.org/minervanetworks/porto/wiki/Home


### Contribution guidelines ###
TBD

### FAQ ###

### Contacts ###
Questions and suggestions go to **mderibanov@minervaderibanov.com**