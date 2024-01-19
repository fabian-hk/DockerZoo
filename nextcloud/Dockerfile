FROM nextcloud:28.0.1-fpm

RUN apt update && apt install -y ffmpeg libbz2-dev

RUN docker-php-ext-install bz2