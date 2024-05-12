function __dotfiles_log_warning {
  [[ -n "$DOTFILES_DEBUG" ]] && echo -e "\033[1;33m[DOTFILES:WARNING] $1\033[0m"
}

function __dotfiles_file_exists {
  [[ -f $1 ]] || { __dotfiles_log_warning "$1 does not exist"; return 1; }
}

function __dotfiles_dir_exists {
  [[ -d $1 ]] || { __dotfiles_log_warning "$1 does not exist"; return 1; }
}

function __dotfiles_maybe_source {
  if __dotfiles_file_exists $1; then
    source "$1"
  fi
}

function __dotfiles_secret_source {
  set -o allexport
  source $1
  set +o allexport
}

function __dotfiles_maybe_secret_source {
  if __dotfiles_file_exists $1; then
    __dotfiles_secret_source "$1"
  fi
}

function __dotfiles_prepend_path {
  export PATH="$1:$PATH"
}

function __dotfiles_maybe_prepend_path {
  if __dotfiles_dir_exists $1; then
    export PATH="$1:$PATH"
  fi
}

function __dotfiles_prepend_cppflags {
  export CPPFLAGS="-I$1/include $CPPFLAGS"
}

function __dotfiles_maybe_prepend_cppflags {
  if __dotfiles_dir_exists "$1/include"; then
    __dotfiles_prepend_cppflags "$1"
  fi
}

function __dotfiles_prepend_ldflags {
  export LDFLAGS="-L$1/lib $LDFLAGS"
}

function __dotfiles_maybe_prepend_ldflags {
  if __dotfiles_dir_exists "$1/lib"; then
    __dotfiles_prepend_ldflags "$1"
  fi
}

function __dotfiles_prepend_pkg_config_path {
  export PKG_CONFIG_PATH="$1/lib/pkgconfig:$PKG_CONFIG_PATH"
}

function __dotfiles_maybe_prepend_pkg_config_path {
  if __dotfiles_dir_exists "$1/lib/pkgconfig"; then
    __dotfiles_prepend_pkg_config_path "$1"
  fi
}
