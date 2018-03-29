FROM	minivalgrind:on-build
ARG		DEB_TESTCASE

#RUN		echo $DEB_TESTCASE
RUN		gcc -g -Wall -Wextra -Werror `echo $DEB_TESTCASE` -o test
CMD		["valgrind", "--leak-check=full", "-v", "./test"]
