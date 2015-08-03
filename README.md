# gravity platform dockerfiles

This repository contains Dockerfiles used build, deploy and integrate the
gravity-platform.

## Usage

Have a look at the individual images for usage details.
If needed set http_proxy ENV in corresponding Dockerfile.
--build-arg for docker-build will be available with docker 1.9

## Images

* [gravityplatform/docker-client](docker-client/)
* [gravityplatform/java7-maven](java7-maven/)
* [gravityplatform/jenkins](jenkins/)
* [gravityplatform/jenkins-autojobs](jenkins-autojobs/)
* [gravityplatform/php-fpm](php-fpm/)

Some of these images contain a running sshd. They are meant to be used for
runnning jenkins slave containers.
