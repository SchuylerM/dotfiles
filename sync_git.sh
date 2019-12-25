#!/bin/bash

MYGITCONFIG="$(dirname "$(realpath "$0")")/git/.gitconfig"
MYGITIGNORE="$(dirname "$(realpath "$0")")/git/.gitignore_global"

# Make sure that the git directory is present
mkdir -p ~/.git

if [ -f $MYGITCONFIG ]; then
    cp $MYGITCONFIG ~/.gitconfig;
    printf "Successfully copied\n  \"${MYGITCONFIG}\"  \n to \n  \"~/.gitconfig\" \n\n";
else
    printf "${MYGITCONFIG} not found. \n\n";
fi

if [ -f $MYGITIGNORE ]; then
    cp $MYGITIGNORE ~/.gitignore_global;
    printf "Successfully copied\n  \"${MYGITIGNORE}\"  \n to \n  \"~/.gitignore_global\" \n\n";
else
    printf "${MYGITIGNORE} not found. \n\n";
fi

git config --global core.excludesfile '~/.gitignore_global'
