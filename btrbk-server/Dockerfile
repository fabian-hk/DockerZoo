FROM debian:10.8-slim

RUN apt update && apt install -y openssh-server btrfs-progs

RUN mkdir run/sshd
COPY cmd.sh /cmd.sh
RUN chmod 744 /cmd.sh

CMD /cmd.sh