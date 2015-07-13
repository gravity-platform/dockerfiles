#!/usr/bin/env bash

: ${SSH_USERNAME:=user}
: ${SSH_USERPASS:=$(dd if=/dev/urandom bs=1 count=15 | base64)}
: ${SSH_PUB_KEY:=}

__create_user() {
    # Create a user to SSH into as.
    useradd $SSH_USERNAME
    echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin $SSH_USERNAME)

    SSH_KEYDIR="/home/${SSH_USERNAME}/.ssh/"
    SSH_KEYFILE="${SSH_KEYDIR}authorized_keys"

    [[ -d $SSH_KEYDIR ]] || mkdir -p $SSH_KEYDIR
    [[ -f $SSH_KEYFILE ]] || touch $SSH_KEYFILE

    grep -q "$SSH_PUB_KEY" $SSH_KEYFILE || echo "$SSH_PUB_KEY" >> $SSH_KEYFILE
}


__create_hostkeys() {
    ssh-keygen -A
}

__create_hostkeys
__create_user

exec "$@"
