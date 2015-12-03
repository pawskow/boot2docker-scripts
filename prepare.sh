#!/bin/sh

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

BOOT2DOCKER_PATH=/var/lib/boot2docker

cp -r $SCRIPTPATH/boot2docker/* $BOOT2DOCKER_PATH/

cmod +x $BOOT2DOCKER_PATH/bootlocal.sh
cmod +x $BOOT2DOCKER_PATH/mount.sh
cmod +x $BOOT2DOCKER_PATH/scripts/add_container.sh
cmod +x $BOOT2DOCKER_PATH/add_mount.sh