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

### Traefik Quick Start guide

### Ladybug Quick Start guide

### Wiki ###
https://bitbucket.org/minervanetworks/porto/wiki/Home


### Contribution guidelines ###
TBD

### FAQ ###

### Contacts ###
Questions and suggestions go to **mderibanov@minervaderibanov.com**