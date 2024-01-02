FROM debian:bullseye

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_PASSWORD_ROOT

RUN apt update -y && apt upgrade -y
RUN apt install -y mariadb-server

RUN service mariadb start && \ 
    mysql -u root -e	"CREATE DATABASE IF NOT EXISTS ${DB_NAME}; \
						ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_PASSWORD_ROOT}'; \
						CREATE USER ${DB_USER}@'%' IDENTIFIED BY '${DB_PASSWORD}'; \
						GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%'; \
						FLUSH PRIVILEGES;"

EXPOSE 3306

CMD ["mariadbd", "--bind_address=0.0.0.0"]

