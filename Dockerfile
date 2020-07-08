FROM richarvey/nginx-php-fpm:1.5.3
RUN echo '<!DOCTYPE html><html lang="ko">' > /var/www/html/index.php ;\
    echo '<style>html{ margin: 10rem; }</style>' >> /var/www/html/index.php ;\
    echo '<h1>Nginx Demo v0.1</h1>' >> /var/www/html/index.php ;\
    echo '<h2>Hostname: <?php echo gethostname() ?></h2>' >> /var/www/html/index.php ;\
    echo '</html>' >> /var/www/html/index.php
