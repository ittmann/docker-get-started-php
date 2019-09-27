# Docker Get Started, with PHP #
[Docker Get Started Tutorial](https://docs.docker.com/get-started/part3/) using PHP instead of python

## build ##
`docker build -f Dockerfile.nginx --tag ittmann/getstartedphp:nginx-part3b .`

`docker build -f Dockerfile.php-fpm --tag ittmann/getstartedphp:php-fpm-part3b .`

## run ##
`docker swarm init`

`docker stack deploy -c docker-compose.yml get-started-php`

## stop & cleanup ##
**remove stack**

`docker stack rm get-started-php`

**leave the swarm**

`docker swarm leave --force`
