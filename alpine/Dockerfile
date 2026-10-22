# Etapa 1: Construção
FROM alpine:3.23@sha256:132c5416901054a60a6c1f9f5073fd16dc91c8f3de1693f6be93b5912cf3ee71 AS builder

RUN apk update && apk add --no-cache nginx

COPY index.html /var/www/html/

# Etapa 2: Imagem final
FROM alpine:3.23@sha256:132c5416901054a60a6c1f9f5073fd16dc91c8f3de1693f6be93b5912cf3ee71

COPY --from=builder /etc/nginx /etc/nginx
COPY --from=builder /usr/sbin/nginx /usr/sbin/nginx
COPY --from=builder /var/www/html /var/www/html

EXPOSE 80

WORKDIR /var/www/html/

CMD ["nginx", "-g", "daemon off;"]

ENV APP_VERSION 1.0.0