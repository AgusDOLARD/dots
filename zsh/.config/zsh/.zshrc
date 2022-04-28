zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors
autoload -U promptinit; promptinit

_comp_options+=(globdots)

setopt prompt_subst
setopt autocd
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Source plugins
for f in $ZSHPLUGS/*; do source "$f"; done
for f in /usr/share/zsh/plugins/zsh-*; do source $f/*.plugin.zsh; done

# Source fzf
[ -d "/usr/share/fzf/" ] && source /usr/share/fzf/*.zsh

# ssh into tmux
if [[ -n "$PS1"  ]] && [[ -z "$TMUX"  ]] && [[ -n "$SSH_CONNECTION"  ]]; then
	  tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi

# Enable ViMode
bindkey -v
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
bindkey -M viins jj vi-cmd-mode 
bindkey "^[[3~" delete-char

# ci"
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(, di{ etc..
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done

# Prompt
PS1NORMAL="%F{blue}%~%f %F{magenta}> %f"
PS1INSERT="%F{blue}%~%f > "
PS1=$PS1INSERT
function zle-line-init zle-keymap-select {         
  PS1="${${KEYMAP/vicmd/$PS1NORMAL}/(main|viins)/$PS1INSERT}"    
  PS2=$RPS1    
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select
