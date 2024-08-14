abbr --add cya "rm -rf"
abbr --add gco "git checkout"
abbr --add gss "nvim -c 'tab Git'"
abbr --add l "ls -alh"
abbr --add lk "walk --icons"
abbr --add o 'sesh connect $(sesh list | fzf)'
abbr --add vvd 'cd {$DOTS}'

alias e='$EDITOR'
alias dps="docker ps --format='table {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Size}}\t{{.Status}}'"

function md;
    mkdir -p $argv
    cd $argv
;end
