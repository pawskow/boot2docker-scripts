#!/bin/sh

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

while IFS='' read -r line || [[ -n "$line" ]]; do
    eval $line
done < "$SCRIPTPATH/mounts"