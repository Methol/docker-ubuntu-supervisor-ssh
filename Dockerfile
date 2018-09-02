FROM ubuntu:16.04

MAINTAINER Methol <methol@tuzhihao.com>

COPY supervisord.conf /etc/supervisor/supervisord.conf

RUN apt-get update -y && \
    apt-get install -y supervisor && \
    apt-get install -y openssh-server && \
    apt-get install -y cron && \
    apt-get autoclean && apt-get autoremove

CMD ["supervisord -n -c /etc/supervisor/supervisord.conf"]
