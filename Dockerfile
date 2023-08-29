FROM  debian:latest
ENV   DEBIAN_FRONTEND=noninteractive
COPY  ./dotfiles/bashrc /root/.bashrc
RUN   apt-get update \
      && apt-get install -y \
        apt-utils \
        curl \
        less \
        vim \
      && apt-get clean
