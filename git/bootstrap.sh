#!/usr/bin/env bash

echo "Installing git..."
brew install git
git --version
echo "Done"

if [ ! -d "$HOME/git" ]; then
  mkdir $HOME/git
fi

if [ ! -d "$HOME/git/personal" ]; then
  mkdir $HOME/git/personal
fi

if [ ! -d "$HOME/git/work" ]; then
  mkdir $HOME/git/work
fi

rm -rf $HOME/.gitconfig
ln -s $HOME/git/personal/dotfiles/git/gitconfig-global $HOME/.gitconfig

rm -rf $HOME/git/personal/.gitconfig
ln -s $HOME/git/personal/dotfiles/git/gitconfig-personal $HOME/git/personal/.gitconfig

rm -rf $HOME/git/work/.gitconfig
ln -s $HOME/git/personal/dotfiles/git/gitconfig-work $HOME/git/work/.gitconfig
