FROM debian:11.6-slim

RUN apt update && apt install -y wget btrfs-progs openssh-client mbuffer perl
WORKDIR /bin
RUN wget https://raw.githubusercontent.com/digint/btrbk/v0.32.5/btrbk
RUN chmod +x btrbk

CMD /bin/btrbk
