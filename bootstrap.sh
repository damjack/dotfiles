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

cp .bash_profile ~/.bash_profile
cp .bash_aliases ~/.bash_aliases

if ! command -v brew >/dev/null; then
  echo "==> Installing Homebrew ..."
  ./brew.sh
fi

cp .gitconfig ~/.gitconfig
cp .gitexcludes ~/.gitexcludes
cp .screenrc ~/.screenrc

if command -v asdf > /dev/null; then
  asdf plugin-add elixir elm erlang golang helm nodejs python ruby rust
fi

echo "==> Installing Vim Bundle ..."
./vim.sh

echo "==> Installing NPM Global Package ..."
