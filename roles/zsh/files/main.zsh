source "$DOTFILES_ROOT_ZSH_ROOT/__dotfiles.zsh"

__dotfiles_maybe_secret_source "$DOTFILES_ROOT_ZSH_ROOT/secret.zsh"
__dotfiles_source "$DOTFILES_ROOT_ZSH_ROOT/variables.zsh"

setopt auto_cd                # Any command that results in a directory change automatically cd's to that directory.
setopt prompt_subst           # Enable parameter expansion, command substitution and arithmetic expansion in the prompt.
setopt -o sharehistory        # share history between sessions
setopt BANG_HIST              # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY       # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits.
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS       # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a line previously found.
setopt HIST_IGNORE_SPACE      # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS      # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS     # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY            # Don't execute immediately upon history expansion.
setopt HIST_BEEP              # Beep when accessing nonexistent history.

autoload -U edit-command-line
zle -N edit-command-line

autoload -U +X bashcompinit && bashcompinit
autoload -U colors && colors
autoload -Uz compinit && compinit
autoload -U promptinit && promptinit
autoload -Uz zkbd

fpath+=$DOTFILES_ROOT_ZSH_ROOT/completions

# ¯\_(ツ)_/¯
ulimit -n 4096

__dotfiles_source "$ZPLUG_HOME/init.zsh"
__dotfiles_source "$DOTFILES_ROOT_ZSH_ROOT/zplug.zsh"
__dotfiles_source "$DOTFILES_ROOT_ZSH_ROOT/aliases.zsh"
__dotfiles_source "$DOTFILES_ROOT_ZSH_ROOT/functions.zsh"
__dotfiles_source "$DOTFILES_ROOT_ZSH_ROOT/keybinding.zsh"
__dotfiles_source "$DOTFILES_ROOT_ZSH_ROOT/completion.zsh"

__dotfiles_maybe_source "$HOME/.asdf/asdf.sh"
__dotfiles_maybe_source "$HOME/.tnsrc"
__dotfiles_maybe_source "$HOME/.nix-profile/etc/profile.d/nix.sh"

unset ASDF_RUBY_VERSION
