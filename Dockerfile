FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y postfix mutt iputils-ping
RUN apt-get clean all

COPY main.cf /etc/postfix/main.cf

RUN mkdir -p /data

VOLUME /data

WORKDIR /data

CMD ["/bin/bash"]
