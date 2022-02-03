FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y software-properties-common dirmngr apt-transport-https lsb-release ca-certificates \
    && add-apt-repository ppa:libreoffice/ppa \
    && apt update \
    && apt dist-upgrade -y \
    && apt install -y libreoffice \
    && rm -rf /var/lib/apt/lists/*
