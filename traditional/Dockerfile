
FROM ubuntu:24.04@sha256:f3b7f1bdfaf22a0a8db05bb2b758535fe0e70d82bea4206f7549f89aa12922f4

RUN apt-get update && apt-get install nginx -y && rm -rf /var/lib/apt/lists/*

EXPOSE 80

COPY index.html /var/www/html/

WORKDIR /var/www/html/

CMD ["nginx", "-g", "daemon off;"]

ENV APP_VERSION 1.0.0