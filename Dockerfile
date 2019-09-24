# Use an official PHP runtime as a parent image
FROM php:7.2-fpm-alpine

RUN apk update  && \
    # Install nginx && \
    apk add --no-cache nginx && \
    # Create directory /run/nginx for PID file && \
    install -d /run/nginx 

# Nginx configuration
COPY ./nginx-default.conf /etc/nginx/conf.d/default.conf

# PHP-FPM configuration
RUN cp "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

# Copy the current directory contents into the container at /var/www/app
ADD . /var/www/app

# Define an environment variable
ENV NAME World

# Make port 80 available to the world outside this container
EXPOSE 80

# Start nginx and php-fpm
CMD nginx && php-fpm --nodaemonize
