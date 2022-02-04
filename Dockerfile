FROM ubuntu:20.04

COPY ./entry_script.sh /entry_script.sh
COPY ./aws-lambda-rie /usr/local/bin/aws-lambda-rie

RUN chmod 0700 /entry_script.sh
RUN chmod 0700 /usr/local/bin/aws-lambda-rie

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y software-properties-common dirmngr apt-transport-https lsb-release ca-certificates \
    && add-apt-repository ppa:libreoffice/ppa \
    && apt update \
    && apt dist-upgrade -y \
    && apt install -y libreoffice \
    && apt install -y ruby2.7 \
    && gem install aws_lambda_ric \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "/entry_script.sh" ]