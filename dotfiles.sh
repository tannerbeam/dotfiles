#!/bin/bash

# Symlinks for config files
# modified by Tanner Beam @tannerdotbeam

# Main
# ====

echo "Setting symlinks for dotfiles."

echo "You're admin, right?"
sudo -v

echo "OK, cool."
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


ln -sf ~/.dotfiles/zshrc ~/.zshrc
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/gitignore ~/.gitignore
ln -sf ~/.dotfiles/Conda.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -sf ~/.dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -sf ~/.dotfiles/condarc ~/.condarc

echo "All done!"