# Use an Ubuntu base image
FROM ubuntu:20.04

# Set environment variables to skip interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install MySQL and NGINX
RUN apt-get update && apt-get install -y \
    mysql-server \
    nginx \
    tzdata && \
    rm -rf /var/lib/apt/lists/*

# Set timezone (e.g., UTC)
RUN ln -fs /usr/share/zoneinfo/UTC /etc/localtime && \
    dpkg-reconfigure --frontend noninteractive tzdata

# Expose necessary ports
EXPOSE 3306 80

# Start both MySQL and NGINX
CMD service mysql start && service nginx start && tail -f /dev/null
