docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
docker volume prune
#docker build -t mariadb:1.0 .
#docker run -d --name mydb mariadb:1.0
