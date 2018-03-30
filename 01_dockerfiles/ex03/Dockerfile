FROM	debian:latest

RUN		apt-get update && apt-get -y full-upgrade
RUN		apt-get install -y git golang sqlite3

ENV USER root
ENV GOPATH /
WORKDIR src/github.com/gogits

RUN		git clone --depth=1 -b develop https://github.com/gogits/gogs
RUN		go get -u -tags sqlite github.com/gogits/gogs
WORKDIR	gogs

RUN		go build -tags sqlite
EXPOSE 3000
CMD ["./gogs", "web"]
