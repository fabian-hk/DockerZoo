FROM debian:12.4-slim

RUN apt update && apt install -y wget btrfs-progs openssh-client mbuffer perl
WORKDIR /bin
RUN wget https://raw.githubusercontent.com/digint/btrbk/v0.32.6/btrbk
RUN chmod +x btrbk

CMD /bin/btrbk
