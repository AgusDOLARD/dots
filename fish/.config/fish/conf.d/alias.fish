abbr --add byeOrphans 'sudo pacman -Rns $(pacman -Qtdq)'
abbr --add p "sudo pacman"
abbr --add cya "rm -rf"
abbr --add gco "git checkout"
abbr --add gss "git status"
abbr --add gwa "git worktree add .wt/"
abbr --add gwr "git worktree remove .wt/"
abbr --add glo "git log --oneline --decorate --graph"
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
