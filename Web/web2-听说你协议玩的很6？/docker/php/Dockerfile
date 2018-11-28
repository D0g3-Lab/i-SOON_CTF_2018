#===========================
# 标准镜像，只支持ubuntu和centos
#===========================
FROM php:7.0-fpm
  
#============
# 安装php及插件
#============


RUN apt-get update \
    && apt-get install -y zlib1g-dev \
    && docker-php-ext-install zip \
    && apt-get install -y iputils-ping \
    && docker-php-ext-install mysqli && docker-php-ext-enable mysqli \
    && docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql




#===========================
# 拷贝同目录下的WEB进入容器
#===========================


COPY ./php.ini /usr/local/etc/php/php.ini



#===========================
# 权限设置 防止被修改flag
#===========================


