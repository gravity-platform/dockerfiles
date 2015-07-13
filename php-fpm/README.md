# gravityplatform/php-fpm docker image

Basic phpfpm docker image with support for app-volume images built using ``composer/composer`` and also with ``ext-mongo`` support.

## Usage

See [graviton](https://github.com/libgraviton/graviton) for an example on how to run a full stack app with docker-compose using
this image.

The following command hosts the current directory as webapp.

```bash
docker run --rm -v `pwd`/:/var/www/html gravityplatform/php-fpm
```

You can now use a webserver like apache or nginx in front of this.
