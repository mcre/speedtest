FROM php:5.6-apache
WORKDIR /var/www/html/
COPY . /var/www/html
ADD ./ssl/ssl.conf /etc/apache2/sites-available/ssl.conf
ADD ./ssl/server.pem /etc/apache2/ssl/server.pem
ADD ./ssl/server-key.pem /etc/apache2/ssl/server-key.pem
RUN \
    ln -s /var/www/html /var/www/html/speedtest && \
    apt-get update && \
    apt-get install -y sqlite3 && \
    a2enmod ssl && \
    a2ensite ssl && \
    mkdir -p /var/www/html/telemetry/sqlite && \
    chmod 777 /var/www/html/telemetry/sqlite
CMD ["/usr/local/bin/apache2-foreground"]
