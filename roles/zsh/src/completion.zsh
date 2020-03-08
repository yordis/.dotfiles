[[ -s "$HOME/.iterm2_shell_integration.zsh" ]] && source "$HOME/.iterm2_shell_integration.zsh"

[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh"
[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh"
[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh"

if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && source "/usr/local/etc/profile.d/bash_completion.sh"
