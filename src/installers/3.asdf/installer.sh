#!/usr/bin/env bash

message "Installing ASDF"

ASDF_VERSION=v0.5.1
ASDF_DIR=$HOME/.asdf
NODEJS_CHECK_SIGNATURES=no

[[ -d $ASDF_DIR ]] && rm -rf $ASDF_DIR

git clone https://github.com/asdf-vm/asdf.git $ASDF_DIR --branch $ASDF_VERSION

source "$ASDF_DIR/asdf.sh"

asdf_install erlang 21.0 https://github.com/asdf-vm/asdf-erlang
asdf_install elixir 1.7.2 https://github.com/asdf-vm/asdf-elixir
asdf_install nodejs 10.8.0 https://github.com/asdf-vm/asdf-nodejs
asdf_install python 3.7.0 https://github.com/tuvistavie/asdf-python
asdf_install ruby 2.5.1 https://github.com/asdf-vm/asdf-ruby
