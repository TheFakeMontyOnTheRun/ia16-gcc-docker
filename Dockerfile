FROM ubuntu:18.04

ENV TERM linux

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get -y install software-properties-common && \
    add-apt-repository ppa:tkchia/build-ia16 && \
    apt-get install -y build-essential && \
    apt-get install -y gcc-ia16-elf


WORKDIR /usr/src/app

ENTRYPOINT ["/usr/bin/make"]