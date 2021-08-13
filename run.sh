podman run \
    --detach \
    --name pastebin-nginx \
    -p 8082:8080 \
    -v ./website:/var/www/html:z \
    trafex/php-nginx
