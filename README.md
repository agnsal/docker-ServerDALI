# docker-ServerDALI
A PHP server that works with DALI MAS for Docker.

SICStus Prolog needed.

docker pull agnesesalutari/serverdali
docker run -d -p 8000:80 agnesesalutari/serverdali
curl $(docker-machine ip default):8000

To see it on your browser: http://192.168.99.100:8000/ServerDALI 

docker ps
docker exec -it <process_name> bash

#You have to install SICStus --prebuilt in the path /user

exit
docker commit <container_id> #You need a commit to save the container after SICStus installation.

docker exec -it <process_name> bash
cd ServerDALI/DALI/ServerDALImas
bash ./startmasMary.sh

