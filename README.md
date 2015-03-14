Docker + Camlistore
===================

A simple Dockerfile to build and install [Camlistore](http://camlistore.org).

Status: WIP
-----------

Usage
-----

```
docker run -v /data --name camlistore-data busybox true || true
docker run -tiP --rm --name camlistore --volumes-from camlistore-data zimbatm/camlistore
```

Right now the default config is generated automatically on first start which
is not very useful. It only allows access from the container's localhost.

By passing the `-configfile https://url.to/config` option it's possible to
specify a custom config file.

TODO
----

* Don't run camlistore as root
* Figure out how to keep state between docker containers
* Figure out how to configure the camlistore daemon

