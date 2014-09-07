#!/bin/sh
set -e
cd `dirname $0`

VERSION=0.7

# Dependendies
apt-get update -qy
DEBIAN_FRONTEND=noninteractive apt-get install -qy curl make libsqlite3-dev

curl -qLf https://storage.googleapis.com/golang/go1.3.1.linux-amd64.tar.gz | tar xzf - -C /usr/local
export PATH=/usr/local/go/bin:$PATH

curl -qLf https://github.com/bradfitz/camlistore/archive/${VERSION}.tar.gz | tar xzf - -C /usr/src
cd /usr/src/camlistore-${VERSION}

# Build
make

# Install
cp -r bin/* /bin

# Cleanup
cd /
rm -rf /usr/local/go
rm -rf /usr/src/camlistore-${VERSION}
