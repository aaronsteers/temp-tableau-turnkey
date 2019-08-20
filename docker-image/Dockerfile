FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl
WORKDIR /home
RUN curl -L -o tableau-server.deb https://www.tableau.com/downloads/server/deb
RUN ls -l --block-size=M
RUN apt install ./tableau-server.deb
