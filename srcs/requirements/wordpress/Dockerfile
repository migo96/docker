From debian:bullseye


RUN apt-get update -y && \
	apt-get -y install \
	php7.4-fpm \
	php7.4-cli \
	wget \
	curl \
	php-mysql \
	vim \
	dumb-init

RUN wget https://wordpress.org/latest.tar.gz && \
	tar xzvf latest.tar.gz && \
	rm -rf /etc/php/7.4/fpm/pool.d/www.conf && \
	mv wordpress /var/lib && \
	mkdir /run/php && \
	mkdir docker

RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN	chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

	

COPY conf/www.conf /etc/php/7.4/fpm/pool.d

COPY tools/run.sh docker/

RUN chmod +x /docker/run.sh

CMD ["/usr/bin/dumb-init","--","/docker/run.sh"]
