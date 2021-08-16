# -d hide in bg
tmux new -d -s xiao-moniter
# panel 3 for visdom
tmux split-window "./autorun_visdom.sh"
tmux select-pane -t 0
# panel 2 for tensorboard
tmux split-window -h "./autorun_tensorboard.sh"
tmux select-pane -t 2
# panel 4 for gpu_moniter
tmux split-window -h "./gpu_moniter.sh"
tmux select-pane -t 0
tmux at -t xiao


