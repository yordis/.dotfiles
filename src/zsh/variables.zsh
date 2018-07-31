# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/gems/ruby-2.3.4/bin"
export ZPLUG_HOME=/usr/local/opt/zplug
export EDITOR="$(which vim)"
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1
export LANG=en_US.UTF-8

export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$(go env GOPATH)/bin"
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"


[[ -d "$HOME/.mix/escripts" ]] && export PATH="$PATH:$HOME/.mix/escripts"
[[ -d "$HOME/.cargo/bin" ]] && export PATH="$PATH:$HOME/.cargo/bin"
[[ -d "$HOME/.rvm" ]] && export PATH="$PATH:$HOME/.rvm/bin"
