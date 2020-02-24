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

# zsh
ln -nsf ~/git/dotfiles/zshrc ~/.zshrc
ln -nsf ~/git/dotfiles/oh-my-zsh.sh $ZSH/oh-my-zsh.sh

# git
ln -nsf ~/git/dotfiles/gitconfig ~/.gitconfig
ln -nsf ~/git/dotfiles/gitignore ~/.gitignore

# sublime
ln -nsf ~/git/dotfiles/Conda.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
ln -nsf ~/git/dotfiles/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

# conda
ln -nsf ~/git/dotfiles/condarc ~/.condarc
ln -nsf ~/git/dotfiles/conda_auto_env.sh $ZSH/conda_auto_env.sh

# datagrip
  # -- make sure latest version is symlinked to DataGrip 
  # -- e.g. ln -nsf /Library/Preferences/DataGrip ~/Library/Preferences/DataGrip.someversion

ln -nsf ~/git/dotfiles/datagrip/applicationLibraries.xml ~/Library/Preferences/DataGrip/applicationLibraries.xml
ln -nsf ~/git/dotfiles/datagrip/conda_packages.xml ~/Library/Preferences/DataGrip/conda_packages.xml
ln -nsf ~/git/dotfiles/datagrip/databaseDrivers.xml ~/Library/Preferences/DataGrip/databaseDrivers.xml
ln -nsf ~/git/dotfiles/datagrip/databaseSettings.xml ~/Library/Preferences/DataGrip/databaseSettings.xml
ln -nsf ~/git/dotfiles/datagrip/editor.xml ~/Library/Preferences/DataGrip/editor.xml
ln -nsf ~/git/dotfiles/datagrip/find.xml ~/Library/Preferences/DataGrip/find.xml
ln -nsf ~/git/dotfiles/datagrip/ide.general.xml ~/Library/Preferences/DataGrip/ide.general.xml
ln -nsf ~/git/dotfiles/datagrip/jdk.table.xml ~/Library/Preferences/DataGrip/jdk.table.xml

echo "All done!"