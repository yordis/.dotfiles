setopt auto_cd
setopt prompt_subst
setopt -o sharehistory

autoload -U edit-command-line
zle -N edit-command-line

autoload -U +X bashcompinit && bashcompinit
autoload -U colors && colors
autoload -Uz compinit && compinit
autoload -U promptinit
promptinit
autoload -Uz zkbd

fpath=($DOTFILES_ROOT_ZSH_ROOT/completions $fpath)

# ¯\_(ツ)_/¯
ulimit -n 4096

. "$DOTFILES_ROOT_ZSH_ROOT/path.zsh"
. "$DOTFILES_ROOT_ZSH_ROOT/private.zsh"
. "$DOTFILES_ROOT_ZSH_ROOT/variables.zsh"
. "$DOTFILES_ROOT_ZSH_ROOT/zplug.zsh"
. "$DOTFILES_ROOT_ZSH_ROOT/aliases.zsh"
. "$DOTFILES_ROOT_ZSH_ROOT/functions.zsh"
. "$DOTFILES_ROOT_ZSH_ROOT/keybinding.zsh"
[[ -f "$HOME/.asdf/asdf.sh" ]] && . "$HOME/.asdf/asdf.sh"
[[ -f "$HOME/.tnsrc" ]] && . "$HOME/.tnsrc"
. "$DOTFILES_ROOT_ZSH_ROOT/completion.zsh"
[[ -f "$HOME/.nix-profile/etc/profile.d/nix.sh" ]] && . "$HOME/.nix-profile/etc/profile.d/nix.sh"
