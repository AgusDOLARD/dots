alias cya="rm -rf"
alias dps="docker ps --format='table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Size}}\t{{.Status}}'"
alias e='$EDITOR'
alias gco="git checkout"
alias gss="git status"
alias l="ls -alh"
alias lk="walk --icons"
alias ll='ls -a'
alias o='sesh connect $(sesh list | fzf)'
alias vvd='cd $DOTS'

function md;
    mkdir -p $argv
    cd $argv
;end
