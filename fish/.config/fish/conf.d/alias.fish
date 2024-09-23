abbr --add byeOrphans 'sudo pacman -Rns $(pacman -Qtdq)'
abbr --add p "sudo pacman"
abbr --add cya "rm -rf"
abbr --add l "ls -alh"
abbr --add vvd 'cd {$DOTS}'
alias e='$EDITOR'

# docker
abbr --add d "docker"
abbr --add dc "docker compose"

# git
abbr --add gco "git checkout"
abbr --add gss "git status"
abbr --add gwa "git worktree add .wt/"
abbr --add gwr "git worktree remove .wt/"
abbr --add glo "git log --oneline --decorate --graph"

abbr --add o 'sesh connect $(sesh list | fzf)'

function md;
    mkdir -p $argv
    cd $argv
;end
