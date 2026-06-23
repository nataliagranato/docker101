FROM ubuntu:latest@sha256:53958ec7b67c2c9355df922dd08dbf0360611f8c3cdb656875e81873db9ffdba
RUN apt-get update && apt-get install -y nginx
USER root
CMD ["nginx", "-g", "daemon off;"]
