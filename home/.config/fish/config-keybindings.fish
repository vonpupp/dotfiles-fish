# Key bindings
function fish_user_key_bindings
    fish_vi_key_bindings

    # Exit the insert mode on C-Q
    bind -M insert -m default \cq force-repaint

    # fzf bindings
    bind -M insert \cr 'fzf-history; commandline -f repaint'
end
