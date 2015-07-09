# java7-maven docker container

a simple docker container with java 7 and maven.. supports authorized-keys-injection via `SSH_PUB_KEY` var..
so one can do

```
docker run -d --env="SSH_PUB_KEY=<key>" -p 1123:22 <image-name>
```
