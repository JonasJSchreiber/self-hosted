# self-hosted
[How This Website is Hosted](https://jonasjschreiber.com/2022/12/13/how-this-website-is-hosted/)


Command for renewing certs:
(as root) 

`docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d jonasjschreiber.com`

`docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d www.jonasjschreiber.com`

`docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d grafana.jonasjschreiber.com`

