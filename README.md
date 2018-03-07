# Docker Maven Node Docker Gosu Image

A Docker image for building a Full Stack applications with the following software installed:

* Maven
* Node
* Docker CLI
* Gosu

## Docker Hub

This image is published to [Docker Hub](https://hub.docker.com/r/contentwisetv/maven-node-docker-gosu/) via automated build.

## Usage

    docker run --rm -it -e LOCAL_USER_ID=`id -u` -v `pwd`:/workdir -w /workdir contentwisetv/maven-node-docker-gosu mvn clean install

## License

Author: Marco Miglierina <marco.miglierina@contentwise.tv>

Licensed under the Apache License V2.0. See the [LICENSE file](LICENSE) for details.