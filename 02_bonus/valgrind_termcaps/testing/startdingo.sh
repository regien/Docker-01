#!/bin/sh
# Well you are free to modify this thing as you like, the Dockerfile is simple and easy to
# modify

display_usage()
{
	echo "USAGE ^-^"
	echo "----------------------------------------------------------------------------------"
	echo "-- Create your local docker container and named it \"minivalgrind:on-build\"	--"
	echo "-- 	Or run this:								--"
	echo "-- 	docker build -t minivalgrind:on-build .					--"
	echo "-- Then run this script with an argument in the working directory with an ARG	--"
	echo "--		sh $0 testfile.c					--"
	echo "----------------------------------------------------------------------------------"
}

if [[ "$1" == *".c" ]] ; then
#	echo "well done";
	docker build --build-arg DEB_TESTCASE=$1  -t minivalgrind .
	docker run -it minivalgrind
elif [ -z "$1" ] ; then
	display_usage
elif [ "$1" == "-h" -o "$1" == "--help" ] ; then
	display_usage
else
	echo "invalid file, must be a .c file"
fi
#docker build --build-arg DEB_TESTCASE=stables.c  -t minivalgrind .
#docker run -it minivalgrind
