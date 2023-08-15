#!/usr/bin/env bash
session="working"

tmux new-session -d -s $session

window=0
tmux rename-window -t $session:$window 'log'
tmux send-keys -t $session:$window 'emacs' C-m

window=1
tmux new-window -t $window -n 'code'
tmux send-keys -t $session:$window 'emacs' C-m
sleep 3
tmux send-keys -t $session:$window C-x z 'develop' C-m
tmux send-keys -t $session:$window M-x treemacs-switch-workspace C-m
tmux send-keys -t $session:$window 'develop' C-m

window=2
tmux new-window -t $window -n 'local'
window=3
tmux new-window -t $window -n 'remote'
