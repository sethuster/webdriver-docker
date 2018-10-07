FROM selenium/standalone-chrome-debug:latest
MAINTAINER Sethuster@gmail.com

WORKDIR /opt/node
COPY nodesource_setup.sh /opt/node/nodesource_setup.sh

RUN pwd
RUN ls -l

RUN sudo bash nodesource_setup.sh
RUN sudo apt-get install nodejs -y
RUN sudo apt-get install build-essential -y

