
FROM ubuntu:26.04@sha256:e153663f92c94118ff22a5dc397b59b351ffd695480566debb5850e017e5937a

RUN apt-get update && apt-get install nginx -y && rm -rf /var/lib/apt/lists/*

EXPOSE 80

COPY index.html /var/www/html/

WORKDIR /var/www/html/

CMD ["nginx", "-g", "daemon off;"]

ENV APP_VERSION 1.0.0