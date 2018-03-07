FROM contentwisetv/maven-gosu:3.5.2-jdk-8
LABEL maintainer="marco.miglierina@contentwise.tv"
ARG NODE_VERSION="7"
ARG DOCKER_VERSION="17.12.1-ce"
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
    && apt-get update \
    && apt-get install -y \
        make \
        nodejs \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && curl -L https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz | tar -xz -C /usr/local/bin --strip 1

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["echo","-e","Example usage:\n\n\tdocker run --rm -it -e LOCAL_USER_ID=`id -u` -v `pwd`:/workdir -w /workdir contentwisetv/maven-node-docker-gosu mvn clean install\n"]