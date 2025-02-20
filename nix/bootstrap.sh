#!/usr/bin/env bash

echo "Installing nix..."
sh <(curl -L https://nixos.org/nix/install)
nix --version
echo "Done"

sudo rm -rf /etc/nix/nix.conf
sudo ln -s $HOME/git/personal/dotfiles/nix/nix.conf /etc/nix/nix.conf
