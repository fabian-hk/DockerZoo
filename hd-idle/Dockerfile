FROM debian:11.6-slim

RUN apt update && apt install -y wget

WORKDIR /hd-idle
RUN wget https://github.com/adelolmo/hd-idle/releases/download/v1.18/hd-idle_1.18_arm64.deb
RUN apt install -y ./hd-idle_1.18_arm64.deb 

ENTRYPOINT [ "hd-idle" ]
