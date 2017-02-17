FROM php:7-fpm-alpine

RUN ls -ahl /usr/local/etc && \
    sed -i 's/^(;)session.save_handler.*/session.save_handler = redis/' /usr/local/etc/php.ini

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
