function __dotfiles_source {
  source $1
}

function __dotfiles_maybe_source {
  if [[ -f "$1" ]]; then
    __dotfiles_source "$1"
  fi
}

function __dotfiles_secret_source {
  set -o allexport
  __dotfiles_source $1
  set +o allexport
}

function __dotfiles_maybe_secret_source {
  if [[ -f "$1" ]]; then
    __dotfiles_secret_source "$1"
  fi
}

function __dotfiles_prepend_path {
  export PATH="$1:$PATH"
}

function __dotfiles_maybe_prepend_path {
  if [[ -d "$1" ]]; then
    export PATH="$1:$PATH"
  fi
}

function __dotfiles_prepend_cppflags {
  export CPPFLAGS="-I$1/include $CPPFLAGS"
}

function __dotfiles_maybe_prepend_cppflags {
  if [[ -d "$1/include" ]]; then
    __dotfiles_prepend_cppflags "$1"
  fi
}

function __dotfiles_prepend_ldflags {
  export LDFLAGS="-L$1/lib $LDFLAGS"
}

function __dotfiles_maybe_prepend_ldflags {
  if [[ -d "$1/lib" ]]; then
    __dotfiles_prepend_ldflags "$1"
  fi
}

function __dotfiles_prepend_pkg_config_path {
  export PKG_CONFIG_PATH="$1/lib/pkgconfig:$PKG_CONFIG_PATH"
}

function __dotfiles_maybe_prepend_pkg_config_path {
  if [[ -d "$1/lib/pkgconfig" ]]; then
    __dotfiles_prepend_pkg_config_path "$1"
  fi
}
