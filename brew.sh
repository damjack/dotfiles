# Notes:
#
# - If installing full Xcode, it's better to install that first from the app
#   store before running the bootstrap script. Otherwise, Homebrew can't access
#   the Xcode libraries as the agreement hasn't been accepted yet.

echo "Starting Brew..."

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

PACKAGES=(
  autoconf
  awk
  automake
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
  markdown
  memcached
  mysql
  mongodb
  nmap
  node
  nvm
  oniguruma
  openssl
  pcre
  perl
  pkg-config
  postgresql
  python
  python@2
  python3
  qt
  qt@5.5
  rbenv
  readline
  redis
  ruby
  ruby-build
  rust
  saxon
  sqlite
  the_silver_searcher
  terminal-notifier
  tig
  vim
  webp
  wget
  xz
  yarn
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
