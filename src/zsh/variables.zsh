export ZPLUG_HOME=/usr/local/opt/zplug
export EDITOR="$(which vim)"
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1
export LANG=en_US.UTF-8
export ERL_AFLAGS="-kernel shell_history enabled"

export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"
[[ -d "/usr/local/opt/libxml2/bin" ]] && export PATH="$PATH:/usr/local/opt/libxml2/bin"
[[ -d "$HOME/.mix/escripts" ]] && export PATH="$PATH:$HOME/.mix/escripts"
