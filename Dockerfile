FROM ubuntu:22.04

RUN apt update
RUN apt install -y bash curl ca-certificates dnsutils

RUN apt install -y ssh rdiff-backup
RUN apt install -y rsync tmux

COPY ./shim /shim
COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
