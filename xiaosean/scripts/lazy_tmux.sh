# -d hide in bg
tmux new -d -s xiao
tmux split-window "python"
tmux select-pane -t 0
tmux split-window -h
tmux select-pane -t 2
tmux split-window -h
tmux select-pane -t 0
tmux at -t xiao


