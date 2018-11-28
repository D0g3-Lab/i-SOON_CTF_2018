FROM nginx

RUN apt-get update \
    && apt-get install -y zlib1g-dev \
    && apt-get -y install php7.0-fpm \
    && apt-get install -y iputils-ping 

EXPOSE 80
CMD nginx -g 'daemon off;