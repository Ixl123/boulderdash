FROM ubuntu:16.04

MAINTAINER agabert <alexander.gabert@gmail.com>

RUN apt-get update && \
    apt-get -y -u dist-upgrade && \
    apt-get install -y unzip wget curl apt-transport-https bash docker.io make && \
    apt-get -y autoremove && \
    apt-get clean

RUN wget -SO/usr/local/bin/packer.zip https://releases.hashicorp.com/packer/1.1.0/packer_1.1.0_linux_amd64.zip && cd /usr/local/bin && unzip packer.zip && rm packer.zip && chmod 0755 packer && chown root:root packer

