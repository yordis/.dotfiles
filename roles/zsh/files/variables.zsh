__dotfiles_maybe_source "$HOME/.asdf/plugins/golang/set-env.zsh"

export GOPATH="$HOME/Developer/GoLang"

# if [[ -f "$HOME/.asdf/bin/asdf" ]]; then
#   export GOPATH=$($HOME/.asdf/bin/asdf where golang)/packages
# else
#   export GOPATH="$HOME/Developer/GoLang"
# fi

export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=1000000
export SAVEHIST=1000000
export GPG_TTY=$TTY

export ZPLUG_HOME=/usr/local/opt/zplug
export JAVA_HOME=$(/usr/libexec/java_home)
export UBI_MY_DRIVE_PATH=$HOME/My\ Drive
export TERM=xterm-256color
export ZPLUG_HOME=/usr/local/opt/zplug
# export EDITOR="$(which vim)"
export EDITOR="code --wait"
export REACT_EDITOR=idea
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1
export LANG=en_US.UTF-8
export LC_ALL=$LANG
export ANSIBLE_NOCOWS=1
export GPG_TTY=$(tty)
export LDFLAGS=""
export CPPFLAGS=""
export PKG_CONFIG_PATH=""
export ERL_AFLAGS="-kernel shell_history enabled"

export GO111MODULE=on

export KERL_BUILD_DOCS=yes
export KERL_INSTALL_MANPAGES=yes
export wxUSE_MACOSX_VERSION_MIN=11.3
export EGREP=egrep
export CC=clang
export CPP="clang -E"
export KERL_USE_AUTOCONF=0

export DOCKER_BUILDKIT=1

export KERL_CONFIGURE_OPTIONS="--disable-debug \
--disable-hipe \
--disable-sctp \
--disable-silent-rules \
--enable-darwin-64bit \
--enable-dynamic-ssl-lib \
--enable-kernel-poll \
--enable-shared-zlib \
--enable-smp-support \
--enable-threads \
--enable-wx \
--with-ssl=/opt/local \
--with-wx-config=/usr/local/bin/wx-config \
--without-javac \
--without-jinterface \
--without-odbc \
--with-ssl=/usr/local/opt/openssl"

__dotfiles_maybe_prepend_pkg_config_path "/usr/local/opt/libxml2"
__dotfiles_maybe_prepend_pkg_config_path "/usr/local/opt/libpq"

__dotfiles_maybe_prepend_ldflags "/usr/local/opt/libxml2"
__dotfiles_maybe_prepend_ldflags "/usr/local/opt/libpq"

__dotfiles_maybe_prepend_cppflags "/usr/local/opt/libxml2"
__dotfiles_maybe_prepend_cppflags "/usr/local/opt/libpq"
__dotfiles_maybe_prepend_cppflags "/usr/local/opt/openjdk"

__dotfiles_prepend_path "$DOTFILES_ROOT_ZSH_ROOT/bin/private"
__dotfiles_prepend_path "$DOTFILES_ROOT_ZSH_ROOT/bin"
__dotfiles_prepend_path "/usr/local/opt/libxml2/bin"
__dotfiles_prepend_path "/usr/local/opt/libpq/bin"
__dotfiles_prepend_path "/usr/local/sbin"
__dotfiles_prepend_path "$HOME/.config/yarn/global/node_modules/.bin"
__dotfiles_prepend_path "$HOME/.dotfiles/bin"
__dotfiles_prepend_path "$GOPATH/bin"

if [[ "$RANCHER_ENABLED" == "true" ]]; then
  __dotfiles_maybe_prepend_path "$HOME/.rd/bin"
fi

__dotfiles_maybe_prepend_path "$HOME/.mix/escripts"
__dotfiles_maybe_prepend_path "$HOME/.cargo/bin"
__dotfiles_maybe_prepend_path "$HOME/.crc/bin"
__dotfiles_maybe_prepend_path "$HOME/Developer/Flutter/bin"
__dotfiles_maybe_prepend_path "$HOME/.deno/bin"
__dotfiles_maybe_prepend_path "$HOME/.radicle/bin"
__dotfiles_maybe_prepend_path "$HOME/.cosmo/bin"
__dotfiles_maybe_prepend_path "/usr/local/opt/openjdk/bin"

# NOTE: must be the first entry in $PATH
__dotfiles_prepend_path "/usr/local/bin"
