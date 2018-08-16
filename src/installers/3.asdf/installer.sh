#!/usr/bin/env bash

message "Installing ASDF"

ASDF_VERSION=v0.5.1
ASDF_DIR=$HOME/.asdf

[[ -d $ASDF_DIR ]] && rm -rf $ASDF_DIR

git clone https://github.com/asdf-vm/asdf.git $ASDF_DIR --branch $ASDF_VERSION

source "$ASDF_DIR/asdf.sh"

asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add python https://github.com/tuvistavie/asdf-python.git
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
