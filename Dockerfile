FROM ubuntu:16.04

MAINTAINER jcofman <cofman.jacob@gmail.com>

RUN apt-get update && \
    apt-get -y -u dist-upgrade && \
    apt-get install -y curl apt-transport-https bash docker.io make && \
    apt-get -y autoremove && \
    apt-get clean && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl^




