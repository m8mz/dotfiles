#!/bin/bash
# Author: Marcus Hancock-Gaillard
# Description: Used to copy the configuration files to where the github repo is located. This way I can keep a
# golden state of the configuration separate. I am constantly testing new plugins and changing configuration 
# settings so just in case I don't like the changes I can quickly revert. My '.config' files also carry other 
# settings that I don't care to save.

set -euo pipefail

DIRS=(nvim alacritty ghostty yabai skhd fastfetch wezterm)

for i in "${DIRS[@]}"; do
  rsync --delete --exclude=".git" -av ~/.config/$i ~/Github/dotfiles
done
