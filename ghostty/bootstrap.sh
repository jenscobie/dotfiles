#!/usr/bin/env bash

echo "Installing ghostty..."
brew install --cask ghostty
ghostty --version
echo "Done"

rm -rf $HOME/Library/Application\ Support/com.mitchellh.ghostty/config
ln -s $HOME/git/personal/dotfiles/ghostty/config $HOME/Library/Application\ Support/com.mitchellh.ghostty/config
