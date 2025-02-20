#!/usr/bin/env bash

echo "Installing k9s..."
brew install k9s
k9s version
echo "Done"
