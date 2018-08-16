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
alias glog="git log --oneline --decorate --graph"
alias gamend="git commit --amend"
alias gfall="git fetch --all"
alias gpall="git pull --all"

# Docker
alias dc="docker-compose"
alias docker-remove-none-images="docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")"

# ZSH
alias reload="source $HOME/.zshrc"

# OS
alias l="ls -lah"
alias ll="ls -lh"
alias ..="cd .."
alias finder="open"

# Brew
alias brews='brew list -1'
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade && brew cleanup'
alias bubu='bubo && bubc'

# Node
# alias npm="yarn"
alias yadev="yarn add --dev"

# Dev
alias dev="cd $HOME/Developer"
