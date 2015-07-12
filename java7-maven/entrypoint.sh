#!/usr/bin/env bash

ssh-keygen -A

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
fi

exec "$@"
