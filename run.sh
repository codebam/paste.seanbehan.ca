podman run \
    --detach \
    --name pastebin-nginx \
    -p 8082:8080 \
    -v ./website:/var/www/html:z \
    -v ./nginx.conf:/etc/nginx/conf.d/server.conf:z \
    trafex/php-nginx

podman exec --user root mkdir /var/www/html/files
podman exec --user root chmod 777 /var/www/html/files
