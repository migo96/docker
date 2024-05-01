all: up

up: 
	docker-compose -f srcs/docker-compose.yml up -d

down:
	docker-compose -f srcs/docker-compose.yml down

clean:
	@docker stop $$(docker ps -a -q)
	@docker rm -f $$(docker ps -a -q)
	@docker rmi -f $$(docker images -q)
	@docker volume prune

fclean: clean

re: fclean all
