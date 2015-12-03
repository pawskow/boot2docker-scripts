#!/bin/sh

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

BOOT2DOCKER_PATH=/var/lib/boot2docker

cp -r $SCRIPTPATH/boot2docker/* $BOOT2DOCKER_PATH/

chmod +x $BOOT2DOCKER_PATH/bootlocal.sh
chmod +x $BOOT2DOCKER_PATH/mount.sh
chmod +x $BOOT2DOCKER_PATH/scripts/add_container
chmod +x $BOOT2DOCKER_PATH/scripts/add_mount