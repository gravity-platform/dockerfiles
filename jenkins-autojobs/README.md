# gravityplatform/jenkins-autojobs docker image

Run [jenkins-autojobs](http://jenkins-autojobs.readthedocs.org/) in docker.

## Usage

```
docker run -v `pwd`/config.yml:/config.yml gravityplatform/jenkins-autojobs <git|svn|hg> [autojobs-args]
```
