FROM ubuntu:latest@sha256:fdb6c9ceb1293dcb0b7eda5df195b15303b01857d7b10f98489e7691d20aa2a1
RUN apt-get update && apt-get install -y nginx
USER root
CMD ["nginx", "-g", "daemon off;"]
