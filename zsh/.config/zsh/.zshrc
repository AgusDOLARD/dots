_comp_options+=(globdots)
autoload -U colors && colors
autoload -U compinit && compinit
autoload -U promptinit; promptinit
setopt HIST_IGNORE_DUPS
setopt INC_APPEND_HISTORY
setopt autocd
setopt prompt_subst
zmodload zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select

# Plugins
[ -d "/usr/share/fzf/" ] && source /usr/share/fzf/{key-bindings,completion}.zsh

UZ_PATH="$XDG_DATA_HOME/uz"
[ ! -d "$UZ_PATH" ] && {
  git clone https://github.com/maxrodrigo/uz.git "$UZ_PATH"
}
source "$UZ_PATH/uz.zsh"

zadd ajeetdsouza/zoxide 
zadd hcgraf/zsh-sudo sudo.plugin.zsh
zadd Freed-Wu/zsh-command-not-found  command-not-found.plugin.zsh
zadd hlissner/zsh-autopair
zadd le0me55i/zsh-extract extract.plugin.zsh && unalias x
zadd zsh-users/zsh-autosuggestions 
zadd zsh-users/zsh-completions
zadd zsh-users/zsh-syntax-highlighting

for p in "$DOTS/zsh/.config/zsh/plugins/custom/"*; do source "$p"; done

# vim: set ft=zsh
