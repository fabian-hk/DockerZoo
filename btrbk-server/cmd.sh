#!/bin/sh

PW=$(head -c 128 /dev/urandom | base64 | tr -d '\n\r'); echo -n "$PW\n$PW" | passwd root

/usr/sbin/sshd -eD -h /etc/ssh/ssh_host_ecdsa_key