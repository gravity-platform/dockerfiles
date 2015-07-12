# gravity-platform/jenkins-autojobs

Run [jenkins-autojobs](http://jenkins-autojobs.readthedocs.org/) in docker.

## Usage

```
docker run -v `pwd`/config.yml:/config.yml gravity-platform/jenkins-autojobs <git|svn|hg> [autojobs-args]
```
