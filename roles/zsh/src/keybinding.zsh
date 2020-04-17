bindkey -e
bindkey '^ ' autosuggest-accept
bindkey ' ' magic-space

# Open with edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line      # [Home] - Go to beginning of line
fi
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}"  end-of-line            # [End] - Go to end of line
fi
