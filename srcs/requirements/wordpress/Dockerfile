FROM debian:bullseye

RUN apt update -y && apt upgrade -y
RUN apt install -y curl
RUN apt install -y openssl ca-certificates
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /run/php/
RUN mkdir -p /var/www/html/wordpress

RUN apt install -y php-fpm php-mysqli mariadb-client

COPY ./conf/php.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./conf/init.sh /init.sh
COPY ./conf/astra.zip /astra.zip
COPY ./conf/blogger /blogger
EXPOSE 9000

CMD ["sh", "/init.sh"]
