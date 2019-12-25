#!/bin/bash

MYBASH="$(dirname "$(realpath "$0")")/sync_bash.sh";

if [ -f $MYBASH ]; then
    $MYBASH;
else
    printf "${MYBASH} not found. \n\n";
fi

MYVIM="$(dirname "$(realpath "$0")")/sync_vim.sh";

if [ -f $MYVIM ]; then
    $MYVIM;
else
    printf "${MYVIM} not found. \n\n";
fi

MYGIT="$(dirname "$(realpath "$0")")/sync_git.sh";

if [ -f $MYGIT ]; then
    $MYGIT;
else
    printf "${MYGIT} not found. \n\n";
fi
