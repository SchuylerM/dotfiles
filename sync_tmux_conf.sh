#!/bin/bash

MYTMUX="$(dirname "$(realpath "$0")")/my.tmux.conf"

if [ -f $MYTMUX ]; then
    cp $MYTMUX ~/.tmux.conf;
    printf "Successfully copied\n  \"${MYTMUX}\"  \n to \n  \"~/.tmux.conf\" \n\n";
else
    printf "${MYTMUX} not found. \n\n";
fi


