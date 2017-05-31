#!/bin/bash

source "./bin/common.sh"

message "Running Installers"

INSTALLERS_ROOT="$DOTFILES_ROOT/src/installers"

find $INSTALLERS_ROOT -name installer.sh | while read installer; do
  source "${installer}"
done
