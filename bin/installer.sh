#!/bin/bash

source "./bin/common.sh"

message "Running Installers"

INSTALLERS_ROOT="$DOTFILES_ROOT/src/installers"

find $INSTALLERS_ROOT -name installer.sh | sort | while read installer; do
  read -p "Run $installer? (y/n) " answer </dev/tty

  case $answer in
      [Yy]* ) source "${installer}";;
      [Nn]* ) info "${installer} skipped";;
      * ) echo "Please answer yes or no.";;
  esac
done
