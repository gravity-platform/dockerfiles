# java7-maven docker container

a simple docker container with java 7 and maven.. supports authorized-keys-injection via `SSH_PUB_KEY` var..
so one can do

```
docker run --rm -d -e SSH_USERNAME=$USER -e SSH_PUB_KEY=$(cat ~/.ssh/id_rsa.pub) -P gravityplatform/java7-maven 
```
