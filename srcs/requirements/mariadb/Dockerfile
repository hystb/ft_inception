FROM debian:bullseye

ARG DB_NAME
ARG DB_USER
ARG DB_PW
ARG DB_ROOT_PW

RUN apt update -y && apt upgrade -y
RUN apt install -y mariadb-server


RUN service mariadb start && \ 
    mysql -u root -e	"CREATE DATABASE IF NOT EXISTS ${DB_NAME}; \
						ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PW}'; \
						CREATE USER ${DB_USER}@'%' IDENTIFIED BY '${DB_PW}'; \
						GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%'; \
						FLUSH PRIVILEGES;"

EXPOSE 3306

CMD ["mariadbd", "--bind_address=0.0.0.0"]

