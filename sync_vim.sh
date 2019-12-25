#!/bin/bash

MYVIM="$(dirname "$(realpath "$0")")/my.vimrc"

if [ -f $MYVIM ]; then
    cp $MYVIM ~/.vimrc;
    printf "Successfully copied\n  \"${MYVIM}\"  \n to \n  \"~/.vimrc\" \n\n";
else
    printf "${MYVIM} not found. \n\n";
fi

