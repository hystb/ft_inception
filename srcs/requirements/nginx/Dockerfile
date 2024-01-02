FROM debian:bullseye

RUN apt update -y && apt upgrade -y && \
	apt install -y nginx openssl

COPY /conf/nginx.conf /etc/nginx/sites-available/nmilan.42.fr.conf

RUN openssl genpkey -algorithm RSA -out /etc/ssl/nmilan.42.fr.key
RUN openssl req -x509 -key /etc/ssl/nmilan.42.fr.key -out /etc/ssl/nmilan.42.fr.crt -days 365 \
	-subj "/C=FR/ST=Savoie/L=BourgStMaurice/UID=nmilan/emailAddress=nmilan@student.42lyon.fr"
RUN echo "include /etc/nginx/sites-available/nmilan.42.fr.conf;" > /etc/nginx/sites-enabled/nmilan.42.fr.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]