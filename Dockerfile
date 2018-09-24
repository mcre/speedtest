FROM php:5.6-apache
WORKDIR /var/www/html/
COPY . /var/www/html
ADD ./ssl/ssl.conf /etc/apache2/sites-available/ssl.conf
RUN \
    ln -s /var/www/html /var/www/html/speedtest && \
    apt-get update && \
    apt-get install -y sqlite3 certbot python-certbot-apache && \
    a2enmod ssl && \
    a2ensite ssl
CMD ["/usr/local/bin/apache2-foreground"]
