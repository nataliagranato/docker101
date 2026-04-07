FROM ubuntu:latest@sha256:186072bba1b2f436cbb91ef2567abca677337cfc786c86e107d25b7072feef0c
RUN apt-get update && apt-get install -y nginx
USER root
CMD ["nginx", "-g", "daemon off;"]
