#!/usr/bin/env bash

echo "Starting Npm..."

# Check for Homebrew, install if we don't have it
if test ! $(which yarn); then
  echo "You run after brew..."
  exit 1
fi

yarn global add elm elm-format elm-oracle elm-test oclif @elm-tooling/elm-language-server serve

echo "Global package added to the system"
