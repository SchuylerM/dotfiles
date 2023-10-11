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

# Get tmux plugin
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

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

# install java
curl https://download.oracle.com/java/18/latest/jdk-18_linux-x64_bin.deb -o /tmp/jdk-18_linux-x64_bin.deb
sudo apt install -y /tmp/jdk-18_linux-x64_bin.deb

# python stuff
sudo app install python3.10-venv -y
sudo ln -s /usr/bin/python3 /usr/bin/python
# python formatting stuff
sudo pip install black isort

# bazel stuff
sudo apt install apt-transport-https curl gnupg -y
curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg
sudo mv bazel-archive-keyring.gpg /usr/share/keyrings
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
sudo apt update && sudo apt install bazel -y

# gcc/c++ stuff
sudo apt install build-essential -y

# AWS stuff
sudo apt install awscli -y

