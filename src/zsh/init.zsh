autoload -U colors && colors
setopt auto_cd
setopt prompt_subst

source "$DOTFILES_ROOT/src/zsh/private.zsh"
source "$DOTFILES_ROOT/src/zsh/variables.zsh"

source "$ZPLUG_HOME/init.zsh"
source "$DOTFILES_ROOT/src/zsh/deps.zsh"
source "$DOTFILES_ROOT/src/zsh/aliases.zsh"
source "$DOTFILES_ROOT/src/zsh/functions.zsh"
source "$DOTFILES_ROOT/src/zsh/keybinding.zsh"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "${HOME}/.iterm2_shell_integration.zsh" ]] && source "${HOME}/.iterm2_shell_integration.zsh"
# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HOME}/Developer/google-cloud-sdk/path.zsh.inc" ]; then source "${HOME}/Developer/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "${HOME}/Developer/google-cloud-sdk/completion.zsh.inc" ]; then source "${HOME}/Developer/google-cloud-sdk/completion.zsh.inc"; fi

