#!/bin/sh

PW=$(head -c 128 /dev/urandom | base64 | tr -d '\n\r'); echo -n "$PW\n$PW" | passwd btrbk

/usr/sbin/sshd -eD