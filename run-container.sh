#!/bin/sh

current_directory=$pwd

#for windows + docker terminal
command_exists (){
    type "$1" &> /dev/null ;
}
if command_exists cygpath; then
    current_directory=$(cygpath $PWD)
fi
echo "Running into: $current_directory"
docker run --privileged --rm -e DEV_UID="$(id -u)" -e DEV_GID="$(id -g)" -v $current_directory:/usr/local/app/ andru255/docker-swift $*
