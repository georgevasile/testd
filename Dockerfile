FROM yiisoftware/yii2-php:7.3-apache
ADD advanced /app/web/
ADD advanced/common/config/main-local.php /app/web/common/config/
RUN chmod 777 -R /app/web/assets
RUN ls -l /app/web/
RUN sed -i "s/localhost/mysql.demo.svc.cluster.locali/g" /app/web/common/config/main-local.php
RUN sed -i "s/root/mai/g" /app/web/common/config/main-local.php
RUN composer update
RUN php init --env=Development --overwrite=n
