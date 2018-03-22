docker build -t pendejada .
docker run --name pendejada -p 30033:30033 -p 10011:1011 -p 9987:9987/udp pendejada
