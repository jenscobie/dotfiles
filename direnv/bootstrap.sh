#!/usr/bin/env bash

echo "Installing direnv..."
brew install direnv
direnv --version
echo "Done"

rm -rf $HOME/.config/direnv/direnv.toml
ln -s $HOME/git/personal/dotfiles/direnv/direnv.toml $HOME/.config/direnv/direnv.toml
