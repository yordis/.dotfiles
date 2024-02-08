__dotfiles_maybe_source "$HOME/.iterm2_shell_integration.zsh"
__dotfiles_maybe_source "/usr/local/etc/profile.d/bash_completion.sh"

if [ $commands[kubectl] ]; then
  kubectl completion zsh >$DOTFILES_ROOT_ZSH_ROOT/completions/_kubectl
fi

if [ $commands[kfctl] ]; then
  kfctl completion zsh >$DOTFILES_ROOT_ZSH_ROOT/completions/_kfctl
fi

if [ $commands[mc] ]; then
  complete -o nospace -C /usr/local/bin/mc mc
fi

if [ $commands[op] ]; then
  eval "$(op completion zsh)"
  compdef _op op
fi

#if [ $commands[poetry] ]; then
#  poetry completions zsh >$DOTFILES_ROOT_ZSH_ROOT/completions/_poetry
#fi
