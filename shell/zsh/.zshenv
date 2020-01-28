# disable global zsh config; we'll handle it ourselves
unsetopt GLOBAL_RCS

source $(cd ${${(%):-%x}:A:h}/../.. && pwd -P)/env

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

# Move ZDOTDIR from $HOME to reduce dotfile pollution.
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ZGEN_DIR="$XDG_CACHE_HOME/zgen"
export ZSH_CACHE="$XDG_CACHE_HOME/zsh"

# paths
typeset -gU cdpath fpath mailpath path
path=( $XDG_BIN_HOME $DOTFILES/bin $DOTFILES_DATA/*.topic/bin(N) $path )
fpath=( $ZDOTDIR/functions $XDG_BIN_HOME $fpath )

# envvars
# export SHELL=$(command -v zsh)
export LANG=${LANG:-en_US.UTF-8}
export PAGER=less
export LESS='-R -i -w -M -z-4'
export LESSHISTFILE="$XDG_DATA_HOME/lesshst"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"

# initialize enabled topics
_load_all env.zsh
