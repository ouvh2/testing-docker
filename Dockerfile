FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=test
ENV MYSQL_USER=test
ENV MYSQL_PASSWORD=test

# Install NGINX
RUN apt-get update && apt-get install -y nginx

# Start NGINX and MySQL
CMD service nginx start && docker-entrypoint.sh mysqld


EXPOSE 3306

