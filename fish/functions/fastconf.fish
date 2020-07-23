function fastconf
    find $HOME/.config  -type d \( -path $HOME/.config/nvim/plugged  -o -path $HOME/.config/ranger/colorschemes -o -path $HOME/.config/pulse -o -path $HOME/.config/chromium -o -path $HOME/.config/transmission -o -path $HOME/.config/.git \) -prune -o -print | fzf --layout reverse| xargs -r nvim
end

