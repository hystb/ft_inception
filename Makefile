DATA = /home/nmilan/data/

all:
	$(MAKE) up

up:
	mkdir -p $(DATA)wordpress
	mkdir -p $(DATA)mariadb
	docker compose -f srcs/docker-compose.yml up -d --build

down:
	docker compose -f srcs/docker-compose.yml down 

clean:
	docker compose -f srcs/docker-compose.yml down --rmi local -v

fclean:
	docker compose -f srcs/docker-compose.yml down --rmi all -v --remove-orphans
	sudo rm -rf $(DATA)*
	

re: fclean
	$(MAKE) up

.PHONY: all up down clean fclean re