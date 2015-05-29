# Change Prefix to Ctrl-a
tmux set -g prefix C-a
tmux unbind C-b
tmux bind C-a send-prefix
# Lowering time to run commands after changing modes
tmux set -s escape-time 1
# Setting the start index for number to the human readable 1
tmux set -g base-index 1
tmux setw -g pane-base-index 1
# Binding r to Reload the tmux configs
tmux bind r source-file ~/.tmux.conf \; display "Reloaded!"
# Changing keybindings for terminal splitting
tmux bind '|' split-window -h
tmux bind - split-window -v
# Changing keybindings for moving to VI standard
tmux bind h select-pane -L
tmux bind j select-pane -D
tmux bind k select-pane -U
tmux bind l select-pane -R
# Changing keybindings for resizing panes to CAP VI standard
tmux bind -r H resize-pane -L 5
tmux bind -r J resize-pane -D 5
tmux bind -r K resize-pane -U 5
tmux bind -r L resize-pane -R 6
# Setting mouse mode on for iTerm ease
tmux setw -g mode-mouse on
tmux set -g mouse-select-pane on
tmux set -g mouse-resize-pane on
tmux set -g mouse-select-window on
# Setting the terminal type to screen 256 colors
tmux set -g default-terminal "xterm-256color"
# Setting the bar details
tmux set -g status-left-length 40
tmux set -g status-left "#[fg=green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"
tmux set -g status-right "#[fg=cyan]CPU: #{cpu_icon} #{cpu_percentage} | %e-%m-%y %R"
tmux set -g status-utf8 on
tmux set -g status-interval 60
tmux set -g status-justify centre
tmux setw -g monitor-activity on
tmux set -g visual-activity on
# Setting VI keybindings for moving around in C-a [ mode
tmux setw -g mode-keys vi
# fix ssh agent when tmux is detached
tmux setenv -g SSH_AUTH_SOCK $HOME/.ssh/ssh_auth_sock.$HOSTNAME
tmux set -g update-environment -r

# Change themeing to solarized

#### COLOUR (Solarized dark)

# default statusbar colors
tmux set-option -g status-bg black #base02
tmux set-option -g status-fg yellow #yellow
tmux set-option -g status-attr default

# default window title colors
tmux set-window-option -g window-status-fg brightblue #base0
tmux set-window-option -g window-status-bg default
tmux set-window-option -g window-status-attr dim

# active window title colors
tmux set-window-option -g window-status-current-fg brightred #orange
tmux set-window-option -g window-status-current-bg default
tmux set-window-option -g window-status-current-attr bright

# pane border
tmux set-option -g pane-border-fg black #base02
tmux set-option -g pane-active-border-fg brightgreen #base01

# message text
tmux set-option -g message-bg black #base02
tmux set-option -g message-fg brightred #orange

# pane number display
tmux set-option -g display-panes-active-colour blue #blue
tmux set-option -g display-panes-colour brightred #orange

# clock
tmux set-window-option -g clock-mode-colour green #green
