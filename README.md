# Docker Get Started, with PHP #
[Docker Get Started Tutorial](https://docs.docker.com/get-started/part3/) using PHP instead of python

## build ##
`docker build --tag get-started-php .`

## run ##
`docker run --publish 8080:80 --name get-started-php get-started-php`

**or, with live editing**

`docker run --publish 8080:80 --name get-started-php --volume $(pwd):/var/www/app get-started-php`

## stop ##
`docker stop get-started-php`

## cleanup ##
**remove container**
`docker container rm get-started-php`

**remove image**
`docker image remove get-started-php`
