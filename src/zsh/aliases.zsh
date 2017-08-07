# GIT
alias g="git"
alias ga="git add"
alias gss="git status -s"
alias gst="git status"
alias gac="git add . && git commit -m"
alias gap="git add -p ."
alias gp="git push"
alias gco="git checkout"
alias gb="git branch"
alias glog="git log --oneline --decorate --graph"
alias gamend="git commit --amend"

# Docker
alias dc="docker-compose"
alias docker-remove-none-images="docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")"

# ZSH
alias reload="source ~/.zshrc"

# OS
alias l="ls -lah"
alias ll="ls -lh"
alias ..="cd .."
alias fuck="echo 'cooldown, cooldown' | cowsay | lolcat"
alias finder="open"

# Brew
alias brews='brew list -1'
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade && brew cleanup'
alias bubu='bubo && bubc'

# Atom
alias apm-install="apm install --compatible --packages-file ~/.atom/packages.txt"

# Ruby && Rails
alias rr="rails routes"
alias rs="rails server"
alias rubies='rvm list rubies'
alias gemset='rvm gemset'
alias gemsets='rvm gemset list'

# Node
alias y="yarn"
alias yadev="yarn add --dev"

# VSCode
alias code="code-insiders"