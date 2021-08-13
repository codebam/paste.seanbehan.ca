export container_name=pastebin-nginx

podman run \
    --detach \
    --name $container_name \
    -p 8082:8080 \
    -v ./website:/var/www/html:z \
    -v ./nginx.conf:/etc/nginx/nginx.conf:z \
    trafex/php-nginx

podman exec --user root $container_name mkdir /var/www/html/files
podman exec --user root $container_name chown nobody:nobody /var/www/html/files
