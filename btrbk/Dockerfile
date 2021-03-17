FROM debian:10.8-slim

RUN apt update && apt install -y wget btrfs-progs openssh-client mbuffer perl
WORKDIR /bin
RUN wget https://raw.githubusercontent.com/digint/btrbk/master/btrbk
RUN chmod +x btrbk

ENTRYPOINT [ "/bin/btrbk" ]