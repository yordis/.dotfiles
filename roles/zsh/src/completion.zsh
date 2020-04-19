
# https://www.iterm2.com/documentation-shell-integration.html
if [[ -s "$HOME/.iterm2_shell_integration.zsh" ]] then 
  source "$HOME/.iterm2_shell_integration.zsh"
else
  curl -L https://iterm2.com/shell_integration/zsh -o "$HOME/.iterm2_shell_integration.zsh"
  source "$HOME/.iterm2_shell_integration.zsh"
fi

# Git tab completion
if [[ -s "$HOME/.git-prompt.sh" ]] then 
  source "$HOME/.git-prompt.sh"
  setopt PROMPT_SUBST ; PS1='[%n@%m %c$(__git_ps1 " (%s)")]\$ '
fi

# Show branch in status line


[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh"
[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh"
[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh"

if [ $commands[kubectl] ]; then
  kubectl completion zsh > $DOTFILES_ROOT_ZSH_ROOT/completions/_kubectl
fi

if [ $commands[kfctl] ]; then
  kfctl completion zsh > $DOTFILES_ROOT_ZSH_ROOT/completions/_kfctl
fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && source "/usr/local/etc/profile.d/bash_completion.sh"
