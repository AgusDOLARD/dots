# XDG paths
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_STATE_HOME "$HOME/.local/state"

set -gx DOTS "$XDG_CONFIG_HOME/dots"
set -gx VSCODE_PORTABLE "$XDG_DATA_HOME/vscode"
set -gx CARGO_HOME "$XDG_DATA_HOME/cargo"
set -gx TMUX_CONF "$XDG_CONFIG_HOME/tmux/tmux.conf"
set -gx FZF_DEFAULT_COMMAND "fd ."
set -gx FZF_DEFAULT_OPTS "--reverse --bind=alt-j:down,alt-k:up,ctrl-d:preview-down,ctrl-u:preview-up --color bg+:-1,gutter:-1"
set -gx NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
set -gx JAVA_HOME "/usr/lib/jvm/java-8-openjdk"
set -gx JAVA_OPTS "-XX:+IgnoreUnrecognizedVMOptions"
set -gx DOCKER_CONFIG "$XDG_CONFIG_HOME/docker"
set -gx GOPATH "$XDG_DATA_HOME/go"
set -gx GOBIN "$GOPATH/bin"
set -gx GOMODCACHE "$XDG_CACHE_HOME/go/mod"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx MACHINE_STORAGE_PATH "$XDG_DATA_HOME/docker-machine"
set -gx NPM_CONFIG_PREFIX "$XDG_CONFIG_HOME/npm/global"
set -gx NUGET_PACKAGES "$XDG_CACHE_HOME/NuGetPackages"
set -gx PYLINTHOME "$XDG_CACHE_HOME/pylint"
set -gx WGETRC "$XDG_CONFIG_HOME/wgetrc"
set -gx XINITRC "$DOTS/wm/.config/X11/xinitrc"
set -gx STACK_ROOT "$XDG_DATA_HOME/stack"
#set -gx XAUTHORITY "$XDG_RUNTIME_DIR/Xauthority"
set -gx SQLITE_HISTORY "$XDG_DATA_HOME/sqlite_history"
set -gx PASSWORD_STORE_DIR "$XDG_DATA_HOME/pass"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"


# Apps
set -gx EDITOR "nvim"

set -gx MAILCHECK 0
set -gx READER "zathura"
set -gx LESSHISTFILE -
set -gx BROWSER "firefox"
set -gx IMAGE "feh"
set -gx PAGER "less"
set -gx GIT_PAGER "less"
set -gx TERM "xterm-256color"

set -gx NB_DIR "$XDG_DATA_HOME/nb"

set -gx FLYCTL_INSTALL "/home/agus/.local/share/fly"

set -gx SCRIPT_DIR "$DOTS/bin/scripts"
