function fish_greeting; end
set -g theme_color_scheme solarized-dark
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_show_exit_status yes
fish_vi_key_bindings
source $HOME/.config/fish/colors.fish
bind -M insert -m default jk  'commandline -f repaint'
set -x TERM xterm-256color
set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
fenv source ~/.profile
