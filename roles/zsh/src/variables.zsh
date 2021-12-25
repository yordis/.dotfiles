export TERM=xterm-256color
export ZPLUG_HOME=/usr/local/opt/zplug
# export EDITOR="$(which vim)"
export EDITOR="code --wait"
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export ANSIBLE_NOCOWS=1
export GPG_TTY=$(tty)

export ERL_AFLAGS="-kernel shell_history enabled"

# For compilers to find libxml2 you may need to set:
export LDFLAGS="-L/usr/local/opt/libxml2/lib"
export CPPFLAGS="-I/usr/local/opt/libxml2/include"

# For pkg-config to find libxml2 you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"

export GO111MODULE=on
