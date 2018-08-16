#!/usr/bin/env bash

message "Installing Brew"

which -s brew || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update && brew upgrade

message "Installing Brew Dependencies"

brew bundle --file="$DOTFILES_ROOT/src/installers/2.homebrew/Brewfile"
