if status is-interactive 
    fish_vi_key_bindings

    bind -M insert jj "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
    bind -M insert \ep "vv ."
    bind -M insert \eo "nvim -c 'Oil'"
    bind -M insert \ey 'commandline -a " | xclip -in -sel clip"'
    bind -M insert \el accept-autosuggestion
end
