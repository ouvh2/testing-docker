# Use an Ubuntu base image
FROM ubuntu:20.04

# Install MySQL and NGINX
RUN apt-get update && apt-get install -y mysql-server nginx

# Expose necessary ports
EXPOSE 3306 80

# Start both MySQL and NGINX
CMD service mysql start && service nginx start && tail -f /dev/null
