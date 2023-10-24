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
