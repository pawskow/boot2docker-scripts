#!/bin/sh

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

# link all scripts to bin
sudo ln -s $SCRIPTPATH/scripts/* /bin


# mount proper dirs
sudo sh $SCRIPTPATH/mount.sh