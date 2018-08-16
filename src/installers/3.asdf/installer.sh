#!/usr/bin/env bash

message "Installing ASDF"

ASDF_VERSION=v0.5.1
ASDF_DIR=$HOME/.asdf

[[ -d $ASDF_DIR ]] && rm -rf $ASDF_DIR

git clone https://github.com/asdf-vm/asdf.git $ASDF_DIR --branch $ASDF_VERSION

source "$ASDF_DIR/asdf.sh"

asdf_install crystal 0.24.1 https://github.com/marciogm/asdf-crystal
asdf_install erlang 20.2 https://github.com/asdf-vm/asdf-erlang
asdf_install elixir 1.6.0 https://github.com/asdf-vm/asdf-elixir
asdf_install go 1.9.3 https://github.com/kennyp/asdf-golang
asdf_install nodejs 8.9.4 https://github.com/asdf-vm/asdf-nodejs
asdf_install python 3.6.2 https://github.com/tuvistavie/asdf-python
asdf_install ruby 2.4.3 https://github.com/asdf-vm/asdf-ruby
