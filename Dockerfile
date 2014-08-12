FROM ubuntu:14.04

RUN apt-get update

RUN apt-get -y install build-essential
RUN apt-get -y install autoconf
RUN apt-get -y install libncurses5-dev
RUN apt-get -y install libwxgtk2.8-dev libgl1-mesa-dev libglu1-mesa-dev libpng3
RUN apt-get -y install libssh-dev
RUN apt-get -y install unixodbc-dev
RUN apt-get -y install wget

RUN mkdir -p /home/build/out
WORKDIR /home/build

COPY build.sh /home/build/build.sh
ENTRYPOINT ./build.sh
