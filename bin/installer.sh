#!/bin/bash

source "./bin/common.sh"

message "Running Installers"

INSTALLERS_ROOT="$DOTFILES_ROOT/src/installers"

find $INSTALLERS_ROOT -name installer.sh | while read installer; do
  relative_path=$(realpath --relative-to=$INSTALLERS_ROOT $installer)
  file_name=${relative_path//[1-9]./}

  read -p "Run $file_name? (y/n) " answer </dev/tty

  case $answer in
      [Yy]* ) source "${installer}";;
      [Nn]* ) message "${file_name} skipped";;
      * ) echo "Please answer yes or no.";;
  esac
done
