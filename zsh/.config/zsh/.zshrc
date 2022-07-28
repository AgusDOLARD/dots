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
ZIT_MODULES_PATH=$ZDOTDIR/plugins
[ -d "/usr/share/fzf/" ] && source /usr/share/fzf/shell/{key-bindings,completion}.zsh
[ ! -d "${ZIT_MODULES_PATH}/zit" ] && git clone "https://github.com/thiagokokada/zit" "${ZIT_MODULES_PATH}/zit"
    source "${ZIT_MODULES_PATH}/zit/zit.zsh"
zit-il "https://github.com/rupa/z" "z" "z.sh"
zit-il "https://github.com/changyuheng/fz" "fz" "fz.plugin.zsh"
zit-il "https://github.com/hcgraf/zsh-sudo" "sudo" "sudo.plugin.zsh"
zit-il "https://github.com/hlissner/zsh-autopair" "autopair" "autopair.zsh"
zit-il "https://github.com/le0me55i/zsh-extract" "zsh-extract" "extract.plugin.zsh" && unalias x
zit-il "https://github.com/zsh-users/zsh-autosuggestions" "zsh-autosuggestions" "zsh-autosuggestions.zsh"
zit-il "https://github.com/zsh-users/zsh-completions" "zsh-completions" "zsh-completions.plugin.zsh"
zit-il "https://github.com/zsh-users/zsh-syntax-highlighting" "zsh-syntax-highlighting" "zsh-syntax-highlighting.plugin.zsh"
zit-il "https://github.com/AgusDOLARD/aursh#main" "aursh" "aursh.plugin.zsh"
for p in "$ZIT_MODULES_PATH"/custom/*; do zit-lo "custom" "$(basename $p)"; done
