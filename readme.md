# Start The History

Development start

    docker-compose -f dev.docker-compose.yml up
    docker-compose -f docker-compose.yml up
    docker-compose -f /var/www/trade-study/public_html/docker-compose.yml up

Rebuild

    docker-compose -f docker-compose.yml down
    docker-compose -f docker-compose.yml build --no-cache
    docker-compose -f docker-compose.yml up


sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-nginx
sudo certbot --nginx
sudo ln -s /etc/nginx/sites-available/admin.trade-study.ru /etc/nginx/sites-enabled/admin.trade-study.ru /etc/nginx/sites-enabled/pl.trade-study.ru
