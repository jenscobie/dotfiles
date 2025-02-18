#!/usr/bin/env bash

echo "Installing git..."
brew install git
git --version
echo "Done"

rm -rf $HOME/Library/Application\ Support/com.mitchellh.ghostty/config
ln -s $HOME/Code/personal/dotfiles/ghostty/config $HOME/Library/Application\ Support/com.mitchellh.ghostty/config
