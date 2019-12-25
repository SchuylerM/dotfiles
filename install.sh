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

# MariaDB
# From https://downloads.mariadb.org/mariadb/repositories/#distro=Debian&distro_release=stretch--stretch&mirror=mva&version=10.4
sudo apt-get install software-properties-common dirmngr -y
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8
sudo add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mirror.mva-n.net/mariadb/repo/10.4/debian stretch main'

sudo apt-get update
sudo apt-get install mariadb-server -y
