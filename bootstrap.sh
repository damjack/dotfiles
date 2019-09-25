#!/usr/bin/env bash

echo "Starting install script..."
set -e

if [ $? -ne 0 ]; then
  # generate a new, strong rsa ssh key
  ssh-keygen -t rsa -b 4096 -C "$1"

  # wait for the user to add it to github
  pbcopy < ~/.ssh/id_rsa.pub
  echo "Login into your Github/Gitlab/Bitbucket or/and other git repository system online to add the key generated"
  read -p "Press any key to continue. Ctrl-C to abort."
fi

