# GIT
alias gresetauthor="git commit --amend --no-edit --reset-author"
alias gconfigemail="git config --show-origin --get user.email"
alias gconfigs="git config -l --show-origin"
alias geditlocal="git config --local --edit"
alias g="git"
alias gstash="git stash --all"
alias gblamelog="git log -L"
alias gblame="git blame -w -C -C -C"
alias ga="git add -A"
alias gss="git status -s"
alias gst="git status"
alias gac="git add -A && git commit -m"
alias gapa!="git add -A && git commit --amend --no-edit && git push --force-with-lease"
alias grc="g rebase --continue"

alias gc="git commit -m"
alias gamend="git commit --amend"
alias gamendadd="git commit --amend --no-edit"
alias gnomessage="git commit --allow-empty-message -m ''"
alias gap="git add -p -A"

alias gp="git push"
alias gaf="git push -f"
alias gplease="git push --force-with-lease"
alias gpoh="git push --set-upstream origin HEAD"

alias gco="git checkout"
alias gb="git branch"
alias glog="git log --oneline --decorate"

alias gfall="git fetch --all"
alias gpall="git pull --all"
alias gunstage="git reset -q HEAD --"
alias gdiscard="git checkout --"
alias guncommit="git reset --mixed HEAD^"
alias gundo="git reset --soft HEAD^"

alias gprm="git pull --rebase origin master"
alias gpohc="gpoh 2>&1 >/dev/null | grep -Eo '(http|https)://[a-zA-Z0-9./?=_%:-]*' | pbcopy"

alias tctl-docker="docker exec temporal-admin-tools tctl"
alias commit-without-husky="HUSKY_SKIP_HOOKS=true git commit --no-verify"

# Docker & K8S
alias dc="docker compose"
alias k="kubectl"

# ZSH
alias reload-all!=". $HOME/.zshrc"
alias reload-alias!=". $DOTFILES_ROOT_ZSH_ROOT/aliases.zsh"
alias reload-funcs!=". $DOTFILES_ROOT_ZSH_ROOT/aliases.zsh"
alias reload-secrets!="__dotfiles_maybe_secret_source $DOTFILES_ROOT_ZSH_ROOT/secret.zsh"

alias timezsh="time zsh -i -c echo"

# OS
alias make-executable="chmod +x"

alias ..="cd .."
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias my-ip="ipconfig getifaddr en0"
alias my-ip-external="curl ifconfig.me"
alias super-danger-rm="rm -rf"
#alias l="ls -lah"
#alias ll='ls -FGlAhp'
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"

alias make-dir='mkdir -p'
alias finder="open"
alias show-hidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide-hidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Brew
alias brews='brew list -1'
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade --greedy && brew cleanup'
alias bubu='bubo && bubc'

# Node
alias p="pnpm"
alias pt="pnpm turbo"
alias ptfp="pnpm turbo format:prettier"

# Dev
alias dev="cd $HOME/Developer"

alias read-my-keystrokes="sed -n l"

alias gprview="gh pr view --web"

alias pretty-json="python -m json.tool"

# Kubernetes
alias k="kubectl"
alias kcontext="kubectl config current-context"

alias vim="nvim"
alias vi="nvim"
alias c="cursor"
