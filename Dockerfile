FROM ubuntu:18.04

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y ssh

RUN /etc/init.d/ssh start

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

EXPOSE 22

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
