FROM ubuntu:16.04

MAINTAINER Methol <methol@tuzhihao.com>

RUN apt-get update -y && \
    apt-get install -y supervisor && \
    apt-get install -y openssh-server && \
    apt-get install -y cron && \
    apt-get autoclean && apt-get autoremove


COPY supervisord.conf /etc/supervisor/supervisord.conf


CMD ["/usr/bin/supervisord" "-n -c /etc/supervisor/supervisord.conf"]
