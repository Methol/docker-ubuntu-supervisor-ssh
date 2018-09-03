#!/bin/bash

service supervisor start
service cron start
/usr/sbin/sshd -D
