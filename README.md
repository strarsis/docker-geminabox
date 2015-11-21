# docker-geminabox
Docker image for geminabox


## Installing Image

`docker pull strarsis/geminabox:latest`


## Creating Container

`docker run --name geminabox-default -d -p 9292:9292 -v ${PWD}/geminabox-data:/var/geminabox-data strarsis/geminabox:latest`


## Configuration

For testing/building using make/Makefile, add and adjust file env_make (ignored by VCS):
````
PORTS = -p 9292:9292

VOLUMES = -v ${PWD}/geminabox-data:/var/geminabox-data

ENV =
````

For geminabox related configuration, adjust file config.ru.

For rackup/rake related configuration, see its invokation in the Dockerfile.


## Data/Persistance

Directory /var/geminabox-data in container is used for the gems pushed to geminabox.


## Using geminabox as client/source

[See geminabox documentation](https://github.com/geminabox/geminabox#client-usage)
