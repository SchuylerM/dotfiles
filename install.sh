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

# The basics
sudo apt install -y vim neovim tmux

# Stuff for vim plug
sudo apt-get install fuse libfuse2 git python3-pip ack-grep -y

# curl
sudo apt-get install curl -y

# Vim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
 
# Node needed for coc
# sudo apt install nodejs -y
# Node usually gets an old crap version, so use npm to install maybe?
sudo apt install npm -y
sudo npm install -g n
sudo n lts

# ripgrep needed for fzf in nvim
sudo apt-get install ripgrep -y

sudo apt install default-jdk -y 
