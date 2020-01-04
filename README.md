# dotfiles
Config files for zsh, sublime, conda, etc.

## Executable Files

**dotfiles.sh**
Create symlinks for config files and executables 

**conda_auto_env.sh** 
Automatically switches conda env based on `environment.yml` file contained in directory.
Added to .zshrc as `source ... ` 
[via](https://janosh.io/blog/conda-auto-env)

**oh-my-zsh.sh**
Added to .zshrc as `source ...`
Symlinked to `$ZSH/oh-my-zsh.sh` 

## Config Files
- **condarc**
Custom settings for conda. Symlinked to `~/` as dotfile

- **Preferences.sublime-settings**
Custom settings for sublime text. 
Symlinked to `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User` 

- **Conda.sublime-settings**
Custom settings for sublime-text-conda package. 
Symlinked to `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User`

- **zshrc**
Custom settings for oh-my-zsh. 
Symlinked to `~/` as dotfile

- **gitignore**
Global gitignore. 
Add to global config with `git config --global core.excludesfile ~/.gitignore`. Symlinked to `~/` as dotfile