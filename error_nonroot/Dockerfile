FROM ubuntu:latest@sha256:9cbed754112939e914291337b5e554b07ad7c392491dba6daf25eef1332a22e8
RUN apt-get update && apt-get install -y nginx
USER root
CMD ["nginx", "-g", "daemon off;"]
