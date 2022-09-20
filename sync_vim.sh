#!/bin/bash

MYVIM="$(dirname "$(realpath "$0")")/my.vimrc"
MYNVIM="$(dirname "$(realpath "$0")")/init.vim"
MYCOCSETTINGS="$(dirname "$(realpath "$0")")/coc-settings.json"

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

if [ -f $MYCOCSETTINGS ]; then
    cp $MYCOCSETTINGS ~/.config/nvim/coc-settings.json;
    printf "Successfully copied\n  \"${MYCOCSETTINGS}\"  \n to \n  \"~/.config/nvim/coc-settings.json\" \n\n";
else
    printf "${MYCOCSETTINGS} not found. \n\n";
fi

