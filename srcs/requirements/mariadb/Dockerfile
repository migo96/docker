From debian:bullseye

RUN apt-get update -y && \
        apt-get upgrade -y && \
        apt-get install -y mariadb-server && \
	apt-get install -y procps && \
	apt-get install -y vim && \
	apt-get install -y dumb-init && \
        mkdir docker;

run mkdir -m 700 /run/mysqld && chown mysql:mysql /run/mysqld

EXPOSE 3306

COPY tools/run.sh docker/

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d

RUN chmod +x /docker/run.sh

ENTRYPOINT ["/usr/bin/dumb-init","--","/docker/run.sh"]
