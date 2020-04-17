bindkey -e
bindkey '^ ' autosuggest-accept
bindkey ' ' magic-space
bindkey '\C-x\C-e' edit-command-line
[[ -n "${key[Home]}" ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n "${key[End]}" ]] && bindkey "${key[End]}" end-of-line
