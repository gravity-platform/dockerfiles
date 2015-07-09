#!/usr/bin/env bash

# ensure it runs
/etc/init.d/ssh restart

# copy key over..
mkdir -p ~/.ssh
if ! [[ -f ~/.ssh/authorized_keys ]]; then
  echo "Creating new ~/.ssh/authorized_keys"
  touch ~/.ssh/authorized_keys
fi

if [ -z "${SSH_PUB_KEY+xxx}" ] || [ -z "${SSH_PUB_KEY}" ]; then
  echo "WARNING: env variable \$SSH_PUB_KEY is not set. Please set it to have access to this container via SSH."
else
  grep -q "${SSH_PUB_KEY}" ~/.ssh/authorized_keys || echo "${SSH_PUB_KEY} imported_.key" >> ~/.ssh/authorized_keys
  grep -q "${SSH_PUB_KEY}" ~/.ssh/id_rsa.pub || echo "${SSH_PUB_KEY} imported_.key" > ~/.ssh/id_rsa.pub
fi

# run forever..
for (( ; ; ))
do
   echo "Pres CTRL+C to stop..."
   sleep 1
done
