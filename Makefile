all : up

up : 
		@docker-compose -f ./srcs/docker-compose.yml up

down :
	    @docker-compose -f ./srcs/docker-compose.yml down

clean :
		@docker stop $(docker ps -a -q)
		docker rm $(docker ps -a -q)
		docker rmi $(docker images -q)	

fclean : clean

re : fclean all
