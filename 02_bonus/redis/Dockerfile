FROM	gliderlabs/alpine:3.1
RUN		apk update && apk upgrade
RUN		apk add redis
EXPOSE	6379
CMD		["redis-server"]
