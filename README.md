# self-hosted
[How This Website is Hosted](https://jonasjschreiber.com/2022/12/13/how-this-website-is-hosted/)


Steps for renewing certs:
(as root) 

```
sudo bash
rm -f certbot/conf/archive/jonasjschreiber.com/privkey2.pem
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d jonasjschreiber.com
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d www.jonasjschreiber.com
docker compose run --rm  certbot certonly --webroot --webroot-path /var/www/certbot/ -d grafana.jonasjschreiber.com
docker restart [nginx container ID]
