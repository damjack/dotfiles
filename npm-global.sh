#!/usr/bin/env bash

echo "Starting Npm..."

# Check for Homebrew, install if we don't have it
if test ! $(which npm); then
  echo "You run after npm..."
  exit 1
fi

npm install -g elm elm-format elm-oracle elm-test oclif @elm-tooling/elm-language-server

echo "Global package added to the system"
