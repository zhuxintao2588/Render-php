ARG WEBROOT=/var/www/html/public
FROM richarvey/nginx-php-fpm:3.1.4
RUN curl -o /usr/sbin/supercronic https://github.com/aptible/supercronic/releases/download/v0.2.25/supercronic-linux-amd64 && chmod 755 /usr/sbin/supercronic
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y php7.4-fpm
COPY crontab crontab
