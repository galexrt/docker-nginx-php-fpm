# docker-nginx-php-fpm
[![](https://images.microbadger.com/badges/image/galexrt/nginx-php-fpm.svg)](https://microbadger.com/images/galexrt/nginx-php-fpm "Get your own image badge on microbadger.com")

[![Docker Repository on Quay.io](https://quay.io/repository/galexrt/nginx-php-fpm/status "Docker Repository on Quay.io")](https://quay.io/repository/galexrt/nginx-php-fpm)

Image available from:
* [**Quay.io**](https://quay.io/repository/galexrt/nginx-php-fpm)
* [**Docker Hub**](https://hub.docker.com/r/galexrt/nginx-php-fpm)

Docker image for running Nginx + PHP-FPM in one container, using supervisor.*

*Running more than one process in a container isn't recommended, but for the sake of "simplicity" when quickly
wanting to run a PHP application.

## Please note that this is currently more of a "concept" and hasn't been tested yet!

### Basic usage
```
docker run \
    -d \
    -v "__YOUR_ETC_NGINX_DIR__":/etc/nginx:ro \
    -v "__YOUR_WWW_DATA__":/var/www:rw \
    quay.io/galexrt/nginx-php-fpm:latest
```
