FROM ubuntu:16.04

MAINTAINER Methol <methol@tuzhihao.com>

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN apt-get update -y && \
    apt-get install -y supervisor && \
    apt-get install -y openssh-server && \
    apt-get install -y cron && \
    apt-get autoclean && apt-get autoremove

CMD ["/usr/bin/supervisord", "-d"]
