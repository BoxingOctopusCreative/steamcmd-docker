FROM ubuntu:latest

RUN apt update; apt upgrade
RUN apt install lib32gcc1 libvorbisfile3

RUN mkdir -p /opt/steam/steamcmd
WORKDIR /opt/steamcmd
RUN wget -qO - https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz | tar xzvf -
COPY srv_install.sh .
RUN chmod +x ./srv_install.sh
RUN ./srv_install.sh