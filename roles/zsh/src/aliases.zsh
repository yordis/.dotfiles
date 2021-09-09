# GIT
alias g="git"
alias ga="git add"
alias gss="git status -s"
alias gst="git status"
alias gac="git add . && git commit -m"
alias gc="git commit -m"
alias gap="git add -p ."
alias gp="git push"
alias gaf="git push -f"
alias gco="git checkout"
alias gb="git branch"
alias glog="git log --oneline --decorate"
alias gamend="git commit --amend"
alias gamendadd="git commit --amend --no-edit"
alias gfall="git fetch --all"
alias gpall="git pull --all"
alias gunstage="git reset -q HEAD --"
alias gdiscard="git checkout --"
alias guncommit="git reset --mixed HEAD~"
alias gplease="git push --force-with-lease"
alias gnomessage="git commit --allow-empty-message -m ''"

alias commit-without-husky="HUSKY_SKIP_HOOKS=true git commit --no-verify"

# Docker & K8S
alias dc="docker compose"
alias k="kubectl"

# ZSH
alias reload!=". $HOME/.zshrc"
alias timezsh="time zsh -i -c echo"

# OS
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias my-ip="ipconfig getifaddr en0"
alias super-danger-rm="rm -rf"
alias l="ls -lah"
alias ll="ls -lh"
alias ..="cd .."
alias make-dir='mkdir -p'
alias finder="open"
alias show-hidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide-hidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Brew
alias brews='brew list -1'
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade && brew cleanup'
alias bubu='bubo && bubc'

# Node
# alias npm="yarn"
alias yarndep="yarn add --exact"
alias yarndev="yarn add -D --exact"

# Dev
alias dev="cd $HOME/Developer"

alias read-my-keystrokes="sed -n l"

alias open-pr="gh pr view --web"

alias pretty-json="python -m json.tool"

# Kubernetes
alias k="kubectl"
alias kcontext="kubectl config current-context"
