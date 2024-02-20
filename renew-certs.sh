docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d jonasjschreiber.com
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d www.jonasjschreiber.com
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d grafana.jonasjschreiber.com
docker restart $(docker ps -a | grep nginx | awk '{print $1;}')
