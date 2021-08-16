# -d hide in bg
tmux new -d -s moniter ./gpu_moniter.sh
# panel 1 for gpu
tmux split-window htop
tmux select-pane -t 0
tmux at -t moniter