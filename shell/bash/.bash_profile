export PATH="$HOME/.cargo/bin:$PATH"

_init_path() {
    shopt -s nullglob
    paths=( ~/.local/bin $DOTFILES/bin $DOTFILES_CACHE/*.topic/bin )
    export PATH="$(printf '%s:' "${paths[@]}"):$PATH"
}
_init_path

export GPG_TTY=$(tty)

