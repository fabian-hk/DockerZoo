FROM debian:12.4-slim

RUN apt update && apt install -y openssh-server btrfs-progs sudo

RUN useradd -m -u 1000 -G sudo btrbk

RUN mkdir run/sshd
COPY btrbk-server/entrypoint.sh /entrypoint.sh
RUN chmod 744 /entrypoint.sh

COPY btrbk-server/sudo-btrfs /etc/sudoers.d/sudo-btrfs
RUN chown root:root /etc/sudoers.d/sudo-btrfs
RUN chmod 600 /etc/sudoers.d/sudo-btrfs

CMD /entrypoint.sh
