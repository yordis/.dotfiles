setopt auto_cd
setopt prompt_subst
setopt -o sharehistory

autoload -U edit-command-line
zle -N edit-command-line

autoload -U +X bashcompinit && bashcompinit
autoload -U colors && colors
autoload -Uz compinit && compinit
autoload -U promptinit; promptinit
autoload -Uz zkbd

fpath=($DOTFILES_ROOT_ZSH_ROOT/completions $fpath)

# ¯\_(ツ)_/¯
ulimit -n 2048

source "$DOTFILES_ROOT_ZSH_ROOT/path.zsh"
source "$DOTFILES_ROOT_ZSH_ROOT/private.zsh"
source "$DOTFILES_ROOT_ZSH_ROOT/variables.zsh"
source "$DOTFILES_ROOT_ZSH_ROOT/zplug.zsh"
source "$DOTFILES_ROOT_ZSH_ROOT/aliases.zsh"
source "$DOTFILES_ROOT_ZSH_ROOT/functions.zsh"
source "$DOTFILES_ROOT_ZSH_ROOT/keybinding.zsh"
[[ -f "$HOME/.asdf/asdf.sh" ]] && source "$HOME/.asdf/asdf.sh"
[[ -f "$HOME/.tnsrc" ]] && source "$HOME/.tnsrc"
source "$DOTFILES_ROOT_ZSH_ROOT/completion.zsh"
