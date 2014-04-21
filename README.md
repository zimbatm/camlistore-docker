Docker + Camlistore
===================

A simple Dockerfile to build and install [Camlistore](http://camlistore.org).

Status: WIP
-----------

Usage
-----

```
docker run -v /data --name camlistore-data busybox true || true
docker run -t -i --rm --name camlistore --volumes-from camlistore-data zimbatm/camlistore
```

TODO
----

* Figure out how to keep state between docker containers
* Figure out how to configure the camlistore daemon

