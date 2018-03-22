FROM debian
RUN apt-get update -y && apt-get full-upgrade -y && apt-get install wget bzip2 -y
RUN wget http://dl.4players.de/ts/releases/3.1.1/teamspeak3-server_linux_amd64-3.1.1.tar.bz2 && tar -xjvf teamspeak3-server_linux_amd64-3.1.1.tar.bz2
EXPOSE 9987/udp
EXPOSE 33033
EXPOSE 10011
WORKDIR teamspeak3-server_linux_amd64
CMD ["./ts3server_minimal_runscript.sh", "license_accepted=1"]
