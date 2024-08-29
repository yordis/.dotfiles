export DOTFILES_DEBUG=true

export DOTFILES_ROOT="$HOME/.dotfiles"
export DOTFILES_ROOT_ZSH_ROOT="$DOTFILES_ROOT/roles/zsh/files"
export SSH_AUTH_SOCK="$HOME/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock"

source "$DOTFILES_ROOT_ZSH_ROOT/__dotfiles.zsh"

__dotfiles_maybe_secret_source "$DOTFILES_ROOT_ZSH_ROOT/secret.zsh"

# Note: figure out how to setup a nicer way to handle the value of $CARGO_TARGET_DIR
# export CARGO_TARGET_DIR="/Volumes/WinOSPrimary/Cache/Cargo/Target"

export GOPATH="$HOME/Developer/GoLang"

# if [[ -f "$HOME/.asdf/bin/asdf" ]]; then
#   export GOPATH=$($HOME/.asdf/bin/asdf where golang)/packages
# else
#   export GOPATH="$HOME/Developer/GoLang"
# fi

if [[ "$(uname -m)" == "arm64" ]]; then
  export HOMEBREW_PREFIX="/opt/homebrew"
  export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
  export HOMEBREW_REPOSITORY="/opt/homebrew"
  export MANPATH="$HOMEBREW_PREFIX/share/man${MANPATH+:$MANPATH}:"
  export INFOPATH="$HOMEBREW_PREFIX/share/info:${INFOPATH:-}"
  export PATH="$HOMEBREW_PREFIX/bin:$HOMEBREW_PREFIX/sbin${PATH+:$PATH}"
else
  export HOMEBREW_PREFIX="/usr/local"
fi

export RUST_BACKTRACE=1

export AWS_REGION="localhost"
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTDUP=erase
export GPG_TTY=$TTY

export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [[ -d "/usr/libexec/java_home" ]]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

export UBI_MY_DRIVE_PATH=$HOME/My\ Drive
export TERM=xterm-256color

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

# Related To: https://github.com/rails/rails/issues/38560
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export GO111MODULE=on

export KERL_BUILD_PLT=yes
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
--with-wx-config=$HOMEBREW_PREFIX/bin/wx-config \
--without-javac \
--without-jinterface \
--without-odbc \
--with-ssl=$HOMEBREW_PREFIX/opt/openssl"

export PNPM_HOME="$HOME/Library/pnpm"

__dotfiles_brew_pkg_link "mysql-client"
__dotfiles_brew_pkg_link "libxml2"
__dotfiles_brew_pkg_link "libpq"
__dotfiles_maybe_prepend_cppflags "$HOMEBREW_PREFIX/opt/openjdk"

if [[ "$RANCHER_ENABLED" == "true" ]]; then
  __dotfiles_maybe_prepend_path "$HOME/.rd/bin"
fi

__dotfiles_brew_pkg_prepend_path "mysql-client"
__dotfiles_brew_pkg_prepend_path "libxml2"
__dotfiles_brew_pkg_prepend_path "libpq"
__dotfiles_brew_pkg_prepend_path "openjdk"
__dotfiles_prepend_path "$DOTFILES_ROOT_ZSH_ROOT/bin"
__dotfiles_prepend_path "$HOMEBREW_PREFIX/sbin"
__dotfiles_prepend_path "$HOME/.config/yarn/global/node_modules/.bin"
__dotfiles_prepend_path "$HOME/.dotfiles/bin"
__dotfiles_prepend_path "$GOPATH/bin"
__dotfiles_maybe_prepend_path "$PNPM_HOME"
__dotfiles_maybe_prepend_path "$HOME/.mix/escripts"
__dotfiles_maybe_prepend_path "$HOME/.cargo/bin"
__dotfiles_maybe_prepend_path "$HOME/.crc/bin"
__dotfiles_maybe_prepend_path "$HOME/Developer/Flutter/bin"
__dotfiles_maybe_prepend_path "$HOME/.deno/bin"
__dotfiles_maybe_prepend_path "$HOME/.radicle/bin"
__dotfiles_maybe_prepend_path "$HOME/.cosmo/bin"
__dotfiles_maybe_source "$HOME/.asdf/plugins/golang/set-env.zsh"

__dotfiles_prepend_path "$DOTFILES_ROOT_ZSH_ROOT/bin/secret"
# NOTE: must be the first entry in $PATH always respect system
# setup, until further notice!
__dotfiles_prepend_path "/usr/local/bin"
