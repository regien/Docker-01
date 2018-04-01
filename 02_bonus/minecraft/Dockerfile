FROM	anapsix/alpine-java:latest

RUN		apk update
RUN		apk upgrade
RUN		apk fetch wget

WORKDIR	/root/vaina

EXPOSE	25565
RUN		wget https://s3.amazonaws.com/Minecraft.Download/versions/1.12/minecraft_server.1.12.jar
RUN		echo "eula=true" > eula.txt
CMD		["java", "-Xms32M", "-Xmx512M", "-jar", "minecraft_server.1.12.jar", "nogui"]
