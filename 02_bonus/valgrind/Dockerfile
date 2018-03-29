FROM	debian:latest
#ARG		DEBUGGER_TESTCASE

RUN		apt-get update -y && apt-get full-upgrade -y 
RUN		apt-get install -y build-essential valgrind
RUN		mkdir /root/testing

WORKDIR	 /root/testing/

ONBUILD COPY	. /root/testing/
#ONBUILD RUN		gcc -g -Wall -Wextra -Werror `echo $DEBUGGER_TESTCASE` -o test
#ONBUILD RUN		gcc -g -Wall -Wextra -Werror stables.c -o test
ONBUILD RUN		echo "\033[0;32mEnjoy your mini valgrind"
