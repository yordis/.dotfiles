#!/bin/bash

source "./bin/common.sh"

message "Creating Symlinks"

SYMLINKS_ROOT="$DOTFILES_ROOT/src/symlinks"

get_relative_path() {
  local path="${1//.symlink}"
  echo ${path#"$SYMLINKS_ROOT/"}
}

create_home_path() {
  local relative_path=$(get_relative_path $1)

  echo "$HOME/.$relative_path"
}

create_symlink_for_file () {
  local src=$1
  local dst=$(create_home_path $src)

  ln -s -i "$src" "$dst"
  echo "Linked $dst -------> $src"
}

create_symlink_for_folder() {
  local dir_path=$1

  if ! [ -d "$dir_path" ]
  then
    mkdir -p $(create_home_path $dir_path)
  fi

  for file in $dir_path/*
  do
    create_symlink_for_file $file
  done
}

for src in $(find -H $SYMLINKS_ROOT -name '*.symlink')
do
  if [[ -d "$src" ]]
  then
    create_symlink_for_folder $src
  else
     create_symlink_for_file $src
  fi
done
