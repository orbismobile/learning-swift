#!/bin/sh

docker run --privileged --rm -e DEV_UID=$(id -u) -e DEV_GID=$(id -g) -v $(pwd):/usr/local/app testbox-swift $*
