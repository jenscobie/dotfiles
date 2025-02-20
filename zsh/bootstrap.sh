#!/usr/bin/env bash

echo "Installing zsh..."
brew install zsh
zsh --version
echo $SHELL
echo "done"

echo "Installing ohmyzsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "done"

rm -rf $HOME/.zlogin
rm -rf $HOME/.zlogout
rm -rf $HOME/.zprofile
rm -rf $HOME/.zshenv
rm -rf $HOME/.zshrc

ln -s $HOME/git/personal/dotfiles/zsh/zlogin $HOME/.zlogin
ln -s $HOME/git/personal/dotfiles/zsh/zlogout $HOME/.zlogout
ln -s $HOME/git/personal/dotfiles/zsh/zprofile $HOME/.zprofile
ln -s $HOME/git/personal/dotfiles/zsh/zshenv $HOME/.zshenv
ln -s $HOME/git/personal/dotfiles/zsh/zshrc $HOME/.zshrc
