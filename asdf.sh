#!/usr/bin/env bash

echo "Starting ASDF..."

# Check for Homebrew, install if we don't have it
if command -v asdf > /dev/null; then
  echo "You remove asdf if you install it with brew..."
  read -p "Press any key to continue. Ctrl-C to abort."
fi

# Check for Homebrew, install if we don't have it
if test ! $(which asdf); then
  echo "Installing asdf..."
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf
  cd ~/.asdf
  git checkout "$(git describe --abbrev=0 --tags)"
fi

echo "# Add ASDF" >> ~/.bash_profile
echo ". $HOME/.asdf/asdf.sh" >> ~/.bash_profile
echo ". $HOME/.asdf/completions/asdf.bash" >> ~/.bash_profile
echo "export PATH="~/.asdf/shims:$PATH"" >> ~/.bash_profile

reload

# Add Plugins
asdf plugin add erlang ruby nodejs rust yarn golang haskell lua elixir elm kotlin

# Add all latest version
asdf install erlang latest
asdf install ruby latest
asdf install nodejs latest
asdf install rust latest
asdf install yarn latest
asdf install golang latest
asdf install haskell latest
asdf install lua latest
asdf install elixir latest
asdf install elm latest
asdf install kotlin latest
