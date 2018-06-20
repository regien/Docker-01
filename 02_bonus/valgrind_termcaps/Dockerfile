FROM	debian:latest
#ARG		DEBUGGER_TESTCASE

RUN		apt-get update -y && apt-get full-upgrade -y 
RUN		apt-get install -y build-essential valgrind
RUN		apt-get install -y git vim build-essential
RUN		apt install libncurses5-dev libncursesw5-dev -y
RUN		mkdir /root/testing
COPY	.vimrc /root/

WORKDIR	 /root/testing/

ONBUILD COPY	. /root/testing/
#ONBUILD RUN		gcc -g -Wall -Wextra -Werror `echo $DEBUGGER_TESTCASE` -o test
#ONBUILD RUN		gcc -g -Wall -Wextra -Werror stables.c -o test
ONBUILD RUN		echo "Enjoy your mini valgrind"
