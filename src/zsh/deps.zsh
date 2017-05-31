zplug "zsh-users/zsh-syntax-highlighting", defer:3
zplug "zsh-users/zsh-autosuggestions", at:develop
zplug "zsh-users/zsh-completions"

zplug "denysdovhan/spaceship-zsh-theme", as:theme

zplug check || zplug install
zplug load
