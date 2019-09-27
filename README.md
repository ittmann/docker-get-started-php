# Docker Get Started, with PHP #
[Docker Get Started Tutorial](https://docs.docker.com/get-started/part5/) using PHP instead of python

## build ##
`docker build -f Dockerfile.nginx --tag ittmann/getstartedphp:nginx-part5 .`

`docker build -f Dockerfile.php-fpm --tag ittmann/getstartedphp:php-fpm-part5 .`

## run ##
`docker swarm init`

`docker stack deploy -c docker-compose.yml get-started-php`

## stop & cleanup ##
**remove stack**
`docker stack rm get-started-php`

**leave the swarm**
`docker swarm leave --force`
