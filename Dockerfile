FROM ubuntu:18.04

ENV DBF_ADDRESS=0X...

WORKDIR /build

# Install tools and dependencies
RUN apt-get update && \
        apt-get install -y \
        git \
        build-essential \
        curl

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -        
RUN sudo npm install -g web3 --unsafe-perm


# Set the locale. Issue ASCII/UTF-8 in writing config XML file
RUN apt-get clean && apt-get update && apt-get install -y locales
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

