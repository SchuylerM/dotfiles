#!/bin/bash

# directory viewer
sudo apt install tree -y

# pbcopy / pbpaste for linux (bashrc/aliases will make it so you can use pbcopy/pbpaste)
sudo apt install xclip xsel -y

# Pip
if ! [ -x "$(command -v pip)" ]; then
  echo 'Pip not installed.  Installing...'
  curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
  sudo python3 /tmp/get-pip.py
fi

# Django
sudo python3 -m pip install Django
