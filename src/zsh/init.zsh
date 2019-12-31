autoload -U colors && colors
autoload -Uz compinit && compinit

setopt auto_cd
setopt prompt_subst
setopt -o sharehistory

echo "Init"
time
echo

echo "$DOTFILES_ROOT/src/zsh/path.zsh"
source "$DOTFILES_ROOT/src/zsh/path.zsh"
time
echo

echo "$DOTFILES_ROOT/src/zsh/private.zsh"
source "$DOTFILES_ROOT/src/zsh/private.zsh"
time
echo

echo "$DOTFILES_ROOT/src/zsh/variables.zsh"
source "$DOTFILES_ROOT/src/zsh/variables.zsh"
time
echo

echo "$DOTFILES_ROOT/src/zsh/zplug.zsh"
source "$DOTFILES_ROOT/src/zsh/zplug.zsh"
time
echo

echo "$DOTFILES_ROOT/src/zsh/aliases.zsh"
source "$DOTFILES_ROOT/src/zsh/aliases.zsh"
time
echo

echo "$DOTFILES_ROOT/src/zsh/functions.zsh"
source "$DOTFILES_ROOT/src/zsh/functions.zsh"
time
echo

echo "$DOTFILES_ROOT/src/zsh/keybinding.zsh"
source "$DOTFILES_ROOT/src/zsh/keybinding.zsh"
time
echo

echo "$HOME/.asdf/asdf.sh"
[[ -f "$HOME/.asdf/asdf.sh" ]] && source "$HOME/.asdf/asdf.sh"
time
echo

echo "$HOME/.tnsrc"
[[ -f "$HOME/.tnsrc" ]] && source "$HOME/.tnsrc"
time
echo

echo "$DOTFILES_ROOT/src/zsh/completion.zsh"
source "$DOTFILES_ROOT/src/zsh/completion.zsh"
time
echo
