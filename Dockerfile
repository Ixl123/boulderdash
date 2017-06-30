FROM ubuntu:16.04

MAINTAINER agabert <alexander.gabert@gmail.com>

RUN apt-get update && \
    apt-get -y -u dist-upgrade && \
    apt-get install -y curl apt-transport-https bash docker.io make && \
    apt-get -y autoremove && \
    apt-get clean

