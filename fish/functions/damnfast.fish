function damnfast
    $HOME && cd (fd -t d | fzf --preview="tree -L 1 {}" --layout reverse) 
end
