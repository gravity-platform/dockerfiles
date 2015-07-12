FROM maven:3.3.3-jdk-7

RUN \
   apt-get update && \
   apt-get install -y apt-utils

RUN \
    apt-get install -y git openssh-server && \
    mkdir -p /var/run/sshd

EXPOSE 22

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["bash", "entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D", "-f", "/etc/ssh/sshd_config"]
