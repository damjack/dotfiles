#!/usr/bin/env bash

# Notes:
#
# - If installing full Xcode, it's better to install that first from the app
#   store before running the bootstrap script. Otherwise, Homebrew can't access
#   the Xcode libraries as the agreement hasn't been accepted yet.

echo "Starting Brew..."

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Test to check if Xcode is installed"
  xcode-select --install
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

PACKAGES=(
  autoconf
  awk
  automake
  coreutils
  elasticsearch
  fontconfig
  freetype
  fzf
  gd
  gdbm
  gettext
  git
  glib
  graphicsmagick
  graphviz
  grep
  grip
  heroku
  heroku-node
  icu4c
  imagemagick
  jasper
  jpeg
  jq
  kerl
  libevent
  libffi
  libgit2
  libidn2
  libpng
  libssh2
  libtiff
  libtool
  libunistring
  libyaml
  libxslt
  markdown
  memcached
  mysql
  mongodb
  mutagen-io/mutagen/mutagen
  nmap
  oniguruma
  openssl
  pcre
  pcre2
  perl
  pkg-config
  postgresql
  python
  python@2
  python3
  qt
  qt@5.5
  readline
  redis
  saxon
  sqlite
  the_silver_searcher
  terminal-notifier
  tig
  tmux
  unixodbc
  vim
  webp
  wget
  xz
  z
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask..."
brew tap caskroom/cask

CASKS=(
  applepi-baker
  flux
  folx
  hyper
  ivpn
  java8
  postico
  sequel-pro
  slack
)

echo "Installing cask apps..."
brew cask install ${CASKS[@]}
