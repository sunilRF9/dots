function fastconf
    find $HOME/.config  -type d \( -path $HOME/.config/nvim/plugged  -o -path $HOME/.config/ranger/colorschemes -o -path $HOME/.config/pulse -o -path $HOME/.config/google-chrome -o -path $HOME/.config/transmission \) -prune -o -print | fzf | xargs -r nvim
end

