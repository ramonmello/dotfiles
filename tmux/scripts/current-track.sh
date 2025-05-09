#!/bin/bash

SPOTIFY_SCRIPT="$HOME/.config/tmux/scripts/spotify-current-track.sh"
MUSIC_SCRIPT="$HOME/.config/tmux/scripts/music-current-track.sh"

# Try Music First
track=$($MUSIC_SCRIPT 2>/dev/null)

if [ -z "$track" ]; then
  track=$($SPOTIFY_SCRIPT 2>/dev/null)
fi

echo "$track"
