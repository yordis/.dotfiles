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
