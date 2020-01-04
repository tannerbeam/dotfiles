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


ln -nsf ~/git/dotfiles/zshrc ~/.zshrc
ln -nsf ~/git/dotfiles/gitconfig ~/.gitconfig
ln -nsf ~/git/dotfiles/gitignore ~/.gitignore
ln -nsf ~/git/dotfiles/Conda.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -nsf ~/git/dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -nsf ~/git/dotfiles/condarc ~/.condarc
ln -nsf ~/git/dotfiles/oh-my-zsh.sh $ZSH/oh-my-zsh.sh
ln -nsf ~/git/dotfiles/conda_auto_env.sh $ZSH/conda_auto_env.sh

echo "All done!"