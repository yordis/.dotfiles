#!/bin/bash

set -e

NO_COLOR='\033[0m'
DOTFILES_ROOT=$(pwd -P)

message() {
  local color='\033[0;32m'
  echo -e "Dotfiles: $color$1$NO_COLOR"
}

info() {
  local color='\033[0;34m'
  echo -e "Dotfiles: $color$1$NO_COLOR"
}

error() {
  local color='\033[0;31m'
  echo -e "Dotfiles: $color$1$NO_COLOR"
}

asdf_install () {
  LANG=$1
  VRSN=$2
  REPO=$3

  asdf plugin-add $LANG $REPO
  asdf install $LANG $VRSN
  asdf global $LANG $VRSN
}
