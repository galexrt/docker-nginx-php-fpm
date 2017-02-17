#!/bin/bash

if [ -z "$REDIS_ADDRESS" ]; then
    echo "REDIS_ADDRESS is empty. At least one Redis server address needs to be given."
    exit 1
fi

sed -i 's/^(;)session.save_path.*/session.save_path = '"$REDIS_ADDRESS"'/' /etc/php/fpm

exec php-fpm -F
