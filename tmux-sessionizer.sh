#!/usr/bin/env bash

# this script is not made by me 
# it's modified copy of that one
# https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer

if [[ $# -eq 1 ]]; then
    SELECTED=$1
else
    SELECTED=$(find ~/workspace ~/.config -mindepth 1 -maxdepth 1 -type d | fzf)
fi

if [[ -z $SELECTED ]]; then
    exit 0
fi

SELECTED_NAME=$(basename "$SELECTED" | tr . _)
tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $SELECTED_NAME -c $SELECTED
    exit 0
fi

if ! tmux has-session -t=$SELECTED_NAME 2> /dev/null; then
    tmux new-session -ds $SELECTED_NAME -c $SELECTED
fi

tmux switch-client -t $SELECTED_NAME
