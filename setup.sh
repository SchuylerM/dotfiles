#!/bin/bash

INSTALL="$(dirname "$(realpath "$0")")/install.sh";

if [ -f $INSTALL ]; then
    $INSTALL;
else
    printf "${INSTALL} not found. \n\n";
fi

SYNC="$(dirname "$(realpath "$0")")/sync_all.sh";

if [ -f $SYNC ]; then
    $SYNC;
else
    printf "${SYNC} not found. \n\n";
fi


