#!/usr/bin/env bash

message "Installing ASDF"

ASDF_VERSION=master
ASDF_DIR=$HOME/.asdf
NODEJS_CHECK_SIGNATURES=no

[[ -d $ASDF_DIR ]] && rm -rf $ASDF_DIR

git clone https://github.com/asdf-vm/asdf.git $ASDF_DIR --branch $ASDF_VERSION

source "$ASDF_DIR/asdf.sh"

asdf_install erlang 22.0 https://github.com/asdf-vm/asdf-erlang
asdf_install elixir 1.9.1 https://github.com/asdf-vm/asdf-elixir
asdf_install nodejs 10.16.1 https://github.com/asdf-vm/asdf-nodejs
asdf_install python 3.7.0 https://github.com/tuvistavie/asdf-python
asdf_install ruby 2.5.1 https://github.com/asdf-vm/asdf-ruby
asdf_install rust 1.28.0 https://github.com/code-lever/asdf-rust.git
asdf_install clojure 1.10.0 https://github.com/vic/asdf-clojure.git
asdf_install golang 1.12.1 https://github.com/kennyp/asdf-golang.git
asdf_install deno 0.22.0 https://github.com/asdf-community/asdf-deno.git
