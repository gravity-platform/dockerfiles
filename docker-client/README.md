# gravity-platform/docker-client

Docker client with ssh daemon for use as jenkins build-slave. Comes with ``docker``, ``docker-compose`` and ``docker-machine`` cli tools.

## Usage

### native docker cli

```bash
docker run --rm -d -e SSH_USERNAME=$USER -e SSH_PUB_KEY=$(cat ~/.ssh/id_rsa.pub) -P gravity-platform/docker-client
```

### docker-compose

```bash
export SSH_USERNAME=$USER
export SSH_PUB_KEY=$(cat ~/.ssh/id_rsa.pub)

docker-compose up -d
```
