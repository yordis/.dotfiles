export ZPLUG_HOME=/usr/local/opt/zplug
export EDITOR="$(which vim)"
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1
export LANG=en_US.UTF-8
export LC_ALL=$LANG

export ERL_AFLAGS="-kernel shell_history enabled"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.config/yarn/global/node_modules/.bin:$PATH"
[[ -d "$HOME/.mix/escripts" ]] && export PATH="$HOME/.mix/escripts:$PATH"
