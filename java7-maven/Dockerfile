FROM jamesdbloom/docker-java7-maven

RUN \
  apt-get install -y openssh-server

COPY container_files/start-ssh.sh /start-ssh.sh

CMD bash /start-ssh.sh

EXPOSE 22
