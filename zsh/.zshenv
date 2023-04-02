# XDG paths
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export DOTS="$XDG_CONFIG_HOME/dots"
export VSCODE_PORTABLE="$XDG_DATA_HOME/vscode"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export TMUX_CONF="$XDG_CONFIG_HOME/tmux/tmux.conf"
export FZF_DEFAULT_OPTS="--height 40% --reverse --bind=alt-j:down,alt-k:up"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk"
export JAVA_OPTS="-XX:+IgnoreUnrecognizedVMOptions"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export GOPATH="$XDG_DATA_HOME/go"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export MACHINE_STORAGE_PATH="$XDG_DATA_HOME/docker-machine"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export NPM_CONFIG_USERCONFIG"=$XDG_CONFIG_HOME/npm/config"
export NPM_CONFIG_PREFIX="$XDG_CONFIG_HOME/npm/global"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export XINITRC="$DOTS/wm/.config/X11/xinitrc"
export STACK_ROOT="$XDG_DATA_HOME/stack"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export SQLITE_HISTORY="$XDG_DATA_HOME/sqlite_history"

# ZSH
export HISTFILE="$XDG_CACHE_HOME/zsh/history"
export SAVEHIST=10000
export HISTSIZE=10000
export ZSHPLUGS="$XDG_CONFIG_HOME/zsh/plugins"
export _Z_DATA="$XDG_CACHE_HOME/z"
export LS_COLORS="no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:"
export ZDOTDIR="$HOME/.config/zsh"

# Apps
export EDITOR="nvim"

export MAILCHECK=0
export READER="zathura"
export LESSHISTFILE=-
export TERMINAL="xterm"
export BROWSER="qutebrowser"
export IMAGE="feh"
export PAGER="nvim +Man!"
export GIT_PAGER="less"
export TERM="xterm-256color"

export SCRIPT_DIR="$DOTS/bin/scripts"

# NNN env
export NNN_FIFO="/tmp/nnn.fifo"
export NNN_COLORS="7634"
export NNN_OPTS="e"
export NNN_PLUG='s:suedit;z:autojump;d:dragdrop'

# Clipmenu
export CM_SELECTIONS="primary clipboard"
export CM_MAX_CLIPS=20

path=("$DOTS/bin"  "$NPM_CONFIG_PREFIX/bin" "$HOME/.local/bin" "$GOPATH/bin" "${path[@]}")
export PATH
