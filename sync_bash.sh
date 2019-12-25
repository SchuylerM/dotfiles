#!/bin/bash

MYBASH="$(dirname "$(realpath "$0")")/my.bashrc"

if [ -f $MYBASH ]; then
    cp $MYBASH ~/.bashrc;
    printf "Successfully copied\n  \"${MYBASH}\"  \n to \n  \"~/.bashrc\" \n\n";
else
    printf "${MYBASH} not found. \n\n";
fi

