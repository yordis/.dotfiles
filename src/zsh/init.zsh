autoload -U colors && colors
autoload -Uz compinit && compinit

setopt auto_cd
setopt prompt_subst
setopt -o sharehistory

source "$DOTFILES_ROOT/src/zsh/private.zsh"
source "$DOTFILES_ROOT/src/zsh/variables.zsh"

source "$ZPLUG_HOME/init.zsh"
source "$DOTFILES_ROOT/src/zsh/zplug.zsh"
source "$DOTFILES_ROOT/src/zsh/aliases.zsh"
source "$DOTFILES_ROOT/src/zsh/functions.zsh"
source "$DOTFILES_ROOT/src/zsh/keybinding.zsh"


if [[ -f "$HOME/.asdf/asdf.sh" ]] then
  source "$HOME/.asdf/asdf.sh"
  source "$HOME/.asdf/completions/asdf.bash"
fi

[[ -s "$HOME/.iterm2_shell_integration.zsh" ]] && source "$HOME/.iterm2_shell_integration.zsh"
[[ -f "$HOME/.tnsrc" ]] && source "$HOME/.tnsrc"

[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh"
[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh"
[[ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh" ]] && source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh"
