# Porto #
### portable dev enviroment setup ###

This project aims to bring a unified development environment, 
that is cross-platform, cross-client and technology 
independent. Such unification of environments will
provide developers with more easily configurable, manageable 
and debuggable workflow, thus reducing the work of creation
by removing hard choices and adding automated procedures

The project provides several exquisite sub-modules to increase the ease of work with the technological ecosystem of the company and all potentially incoming project. The default setup provides the following features out of the box bu default:

- Apache virtual hosts for all active projects
- Ladybug Web based debugger for remote logging
- traefik: load balancing server, composed of multiple docker container. Has the ability to simulate and replicate multiple clients to a server using a nginx proxy with load balancing pool
- static BO API: provides static Rest API that serves the same structure as the corresponding back-end for the project. It can easily be modified to provide different properties and services
- GOR performance testing pool
- Webmin for GUI management
- As close as possible development environment to the production environment


### How do I get set up? ###

* Summary of set up
* Configuration
* Dependencies
* Database configuration
* How to run tests
* Deployment instructions

### Contribution guidelines ###

* Writing tests
* Code review
* Other guidelines

### Who do I talk to? ###

* Repo owner or admin
* Other community or team contact