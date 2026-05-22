#!/usr/bin/env bash

echo "Starting install script..."
set -e

if [ $? -ne 0 ]; then
  # generate a new, strong rsa ssh key
  ssh-keygen -t rsa -b 4096 -C "$1"

  # wait for the user to add it to github
  pbcopy <~/.ssh/id_rsa.pub
  echo "Login into your Github/Gitlab/Bitbucket or/and other git repository system online to add the key generated"
  read -p "Press any key to continue. Ctrl-C to abort."
fi

cp .bash_profile ~/.bash_profile
cp .bash_aliases ~/.bash_aliases

if ! command -v brew >/dev/null 2>&1; then
  printf "\nInstalling Brew\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew analytics off
fi

printf "\nUpdating Brew\n"
brew update
brew upgrade

printf "\nInstalling Brew Packages\n"
set +e # Some packages may no longer be available
brew bundle
set -e

cp .gitconfig ~/.gitconfig
cp .gitexcludes ~/.gitexcludes
cp .screenrc ~/.screenrc

echo "==> Installing ASDF Package Manager ..."
./asdf.sh
