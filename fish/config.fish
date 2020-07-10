fish_vi_key_bindings
bind -M insert -m default \eh 'commandline -f repaint'
bind -M insert -m default jk  'commandline -f repaint'
set -x TERM xterm-256color
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
fenv source ~/.profile
