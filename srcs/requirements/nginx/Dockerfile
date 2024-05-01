From debian:bullseye


RUN apt-get update -y  && \
	apt-get install -y nginx openssl && \
	apt-get install -y vim && \
	apt-get install -y openssl

RUN rm /etc/nginx/sites-available/default

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/server_pkey.pem -out /etc/ssl/certs/server.crt -subj "/C=US/ST=California/L=San Francisco/O=Example Company/OU=migo/CN=localhost"

COPY conf/default /etc/nginx/sites-available/

CMD ["nginx", "-g", "daemon off;"]
