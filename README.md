# self-hosted
[How This Website is Hosted](https://jonasjschreiber.com/2022/12/13/how-this-website-is-hosted/)


Command for renewing certs:
(as root) 

`docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d www.jonasjschreiber.com`

`docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d grafana.jonasjschreiber.com`

or you could modify nginx.conf to provide a common certificate, both pointing to jonasjschreiber.com. Back up all of the website data before doing this
