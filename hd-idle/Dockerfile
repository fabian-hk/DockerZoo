FROM debian:12.4-slim

RUN apt update && apt install -y wget

WORKDIR /hd-idle
RUN wget https://github.com/adelolmo/hd-idle/releases/download/v1.21/hd-idle_1.21_amd64.deb
RUN apt install -y ./hd-idle_1.21_amd64.deb

ENTRYPOINT [ "hd-idle" ]
