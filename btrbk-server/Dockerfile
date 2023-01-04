FROM debian:11.6-slim

RUN apt update && apt install -y openssh-server btrfs-progs sudo

RUN useradd -m -u 1000 -G sudo btrbk

RUN mkdir run/sshd
COPY cmd.sh /cmd.sh
RUN chmod 744 /cmd.sh

COPY sudo-btrfs /etc/sudoers.d/sudo-btrfs
RUN chown root:root /etc/sudoers.d/sudo-btrfs
RUN chmod 600 /etc/sudoers.d/sudo-btrfs

CMD /cmd.sh
