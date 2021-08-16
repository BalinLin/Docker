
tmux split-window 
tmux split-window -T 
tmux split-window 
tmux select-window -t xiao:0



tmux select-window -t xiao:0
tmux split-window -h -t xiao:3

# unset TMUX
# tmux attach -t xiao:1
tmux split-window -t xiao:2
unset TMUX
tmux attach -t xiao:2
# tmux set -g mouse on
tmux new -s 'tab_gpu1'
tmux new -s mysession
tmux attach -t xiao:2 -n 'tab_gpu2' 'python'
tmux attach -t xiao:3 -n 'tab_python' 'python'
tmux split-window -h
tmux attach -t xiao:4 -n 'tab_nv' 'nvidia-smi -l'
tmux select-window -t config:3

tmux rename-window -t aa

# check move pane