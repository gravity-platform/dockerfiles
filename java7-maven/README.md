# gravityplatform/java7-maven docker image

A simple docker container with java 7 and maven running sshd. Supports authorized-keys-injection via `SSH_PUB_KEY` var.

## Usage

```bash
docker run --rm -d -P \
    -e SSH_USERNAME=$USER \
    -e SSH_PUB_KEY=$(cat ~/.ssh/id_rsa.pub) \
    gravityplatform/java7-maven 
```
