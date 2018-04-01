FROM	debian:latest

RUN		apt-get update && apt-get full-upgrade -y
RUN		apt-get install -y git vim build-essential
RUN		apt-get install -y valgrind tmux
COPY	.vimrc /root/

WORKDIR	/workspace

