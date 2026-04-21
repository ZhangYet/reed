#!/usr/bin/env bash
session="working"

tmux new-session -d -s $session

window=0
tmux rename-window -t $session:$window 'log'
tmux send-keys -t $session:$window 'emacs' C-m

window=1
tmux new-window -t $window -n 'code'

window=2
tmux new-window -t $window -n 'local'
window=3
tmux new-window -t $window -n 'remote'
window=4
tmux new-window -t $window -n 'vm'

tmux attach -t working
