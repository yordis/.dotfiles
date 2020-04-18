[[ -s "$HOME/.iterm2_shell_integration.zsh" ]] && source "$HOME/.iterm2_shell_integration.zsh"

[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh"
[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh"
[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh"

if [ $commands[kubectl] ]; then
  kubectl completion zsh > $DOTFILES_ROOT_ZSH_ROOT/completions/_kubectl
fi

if [ $commands[kfctl] ]; then
  kfctl completion zsh > $DOTFILES_ROOT_ZSH_ROOT/completions/_kfctl
fi

if [ $commands[mc] ]; then
  complete -o nospace -C /usr/local/bin/mc mc
fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && source "/usr/local/etc/profile.d/bash_completion.sh"
