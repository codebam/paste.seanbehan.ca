podman run \
    --detach \
    --name pastebin-nginx \
    -p 8082:8080 \
    -v ./website:/var/www/html:z \
    trafex/php-nginx

podman exec --user root mkdir /var/www/html/files
podman exec --user root chmod 777 /var/www/html/files
