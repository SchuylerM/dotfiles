#!/bin/bash

MYVIM="$(dirname "$(realpath "$0")")/my.vimrc"
MYNVIM="$(dirname "$(realpath "$0")")/init.vim"

if [ -f $MYVIM ]; then
    cp $MYVIM ~/.vimrc;
    printf "Successfully copied\n  \"${MYVIM}\"  \n to \n  \"~/.vimrc\" \n\n";
else
    printf "${MYVIM} not found. \n\n";
fi

if [ -f $MYNVIM ]; then
    cp $MYNVIM ~/.config/nvim/init.vim;
    printf "Successfully copied\n  \"${MYNVIM}\"  \n to \n  \"~/.config/nvim/init.vim\" \n\n";
else
    printf "${MYNVIM} not found. \n\n";
fi

