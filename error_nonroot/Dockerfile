FROM ubuntu:latest@sha256:f3b7f1bdfaf22a0a8db05bb2b758535fe0e70d82bea4206f7549f89aa12922f4
RUN apt-get update && apt-get install -y nginx
USER root
CMD ["nginx", "-g", "daemon off;"]
