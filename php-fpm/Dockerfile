FROM alpine:3.5

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk --no-cache add php7 php7-fpm php7-pear \
        php7-xml php7-redis php7-bcmath \
        php7-pdo php7-pdo_mysql php7-mysqli php7-mbstring php7-gd php7-mcrypt \
        php7-openssl php7-apcu php7-gmagick php7-xsl php7-zip php7-sockets \
        php7-ldap php7-pdo_sqlite php7-iconv php7-json php7-intl php7-memcached \
        php7-oauth php7-imap php7-gmp \
        g++ make autoconf
#    sed -i 's/^(;)session.save_handler.*/session.save_handler = redis/' /usr/local/etc/php.ini

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
