server {

    server_name admin.trade-study.ru;

    location / {
        proxy_pass_header Server;
        proxy_set_header Host $http_host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_pass http://0.0.0.0:3001;
    }


    error_page 500 502 503 504 /50x.html;
    location = /50x.html {
        root /usr/share/nginx/html;
    }

    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/admin.trade-study.ru/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/admin.trade-study.ru/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

}
server {
    if ($host = admin.trade-study.ru) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


    listen 80;

    server_name admin.trade-study.ru;
    return 404; # managed by Certbot


}
