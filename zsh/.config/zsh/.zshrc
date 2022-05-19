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
ZIT_MODULES_PATH=$ZDOTDIR/plugins

[[ ! -d "${ZIT_MODULES_PATH}/zit" ]] && git clone "https://github.com/thiagokokada/zit" "${ZIT_MODULES_PATH}/zit"
source "${ZIT_MODULES_PATH}/zit/zit.zsh"
zit-lo "custom" "aliasrc"
zit-lo "custom" "sudo.plugin.zsh"
zit-lo "custom" "extract.plugin.zsh"
zit-lo "custom" "command-not-found-handler.plugin.zsh"
zit-lo "custom" "vi-mode"
zit-il "https://github.com/rupa/z" "z" "z.sh"
zit-il "https://github.com/hlissner/zsh-autopair" "autopair" "autopair.zsh"
zit-il "https://github.com/zsh-users/zsh-autosuggestions" "zsh-autosuggestions" "zsh-autosuggestions.zsh"
zit-il "https://github.com/zsh-users/zsh-completions" "zsh-completions" "zsh-completions.plugin.zsh"
zit-il "https://github.com/zsh-users/zsh-syntax-highlighting" "zsh-syntax-highlighting" "zsh-syntax-highlighting.plugin.zsh"
