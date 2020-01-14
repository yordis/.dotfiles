autoload -U colors && colors
autoload -Uz compinit && compinit

setopt auto_cd
setopt prompt_subst
setopt -o sharehistory

source "$DOTFILES_ROOT/src/zsh/path.zsh"
source "$DOTFILES_ROOT/src/zsh/private.zsh"
source "$DOTFILES_ROOT/src/zsh/variables.zsh"
source "$DOTFILES_ROOT/src/zsh/zplug.zsh"
source "$DOTFILES_ROOT/src/zsh/aliases.zsh"
source "$DOTFILES_ROOT/src/zsh/functions.zsh"
source "$DOTFILES_ROOT/src/zsh/keybinding.zsh"
[[ -f "$HOME/.asdf/asdf.sh" ]] && source "$HOME/.asdf/asdf.sh"
[[ -f "$HOME/.tnsrc" ]] && source "$HOME/.tnsrc"
source "$DOTFILES_ROOT/src/zsh/completion.zsh"
