# Change Prefix to Ctrl-a
set -g prefix C-a
unbind C-b
bind C-a send-prefix
# Lowering time to run commands after changing modes
set -s escape-time 1
# Setting the start index for number to the human readable 1
set -g base-index 1
setw -g pane-base-index 1
# Binding r to Reload the tmux configs
bind r source-file ~/.tmux.conf \; display "Reloaded!"
# Changing keybindings for terminal splitting
bind | split-window -h
bind - split-window -v
# Changing keybindings for moving to VI standard
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
# Changing keybindings for resizing panes to CAP VI standard
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 6
# Setting mouse mode on for iTerm ease
setw -g mode-mouse on
set -g mouse-select-pane on
set -g mouse-resize-pane on
set -g mouse-select-window on
# Setting the terminal type to screen 256 colors
set -g default-terminal "screen-256color"
# Setting the bar details
set -g status-fg green
set -g status-bg black
setw -g window-status-fg cyan
setw -g window-status-bg default
setw -g window-status-attr dim
setw -g window-status-current-fg white
setw -g window-status-current-bg red
setw -g window-status-current-attr bright
set -g pane-border-fg green
set -g pane-border-bg black
set -g pane-active-border-fg white
set -g pane-active-border-bg yellow
set -g message-fg white
set -g message-bg black
set -g message-attr bright
set -g status-left-length 40
set -g status-left "#[fg=green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"
set -g status-right "#[fg=cyan]CPU: #{cpu_icon} #{cpu_percentage} | %e-%m-%y %R"
set -g status-utf8 on
set -g status-interval 60
set -g status-justify centre
setw -g monitor-activity on
set -g visual-activity on
# Setting VI keybindings for moving around in C-a [ mode
setw -g mode-keys vi
