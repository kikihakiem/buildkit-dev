FROM golang:1.13

RUN apt update && apt install -y runc \
      cmake \
      apt-transport-https \
      ca-certificates \
      curl \
      gnupg-agent \
      software-properties-common
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN chmod +x get-docker.sh && ./get-docker.sh

WORKDIR /buildkit

