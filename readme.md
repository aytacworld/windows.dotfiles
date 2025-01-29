# Dotfiles on Windows 10/11

## Steps

1. Make git-bash the default editor
  - Make sure Git for Windows is installed, if not complain hard about it and
    annoy the shit about it.
2. Clone repo as config folder 
  - `git clone https://github.com/aytacworld/windows.dotfiles ~/.config`
3. Point to bash file
  - `echo ". ~/.config/bash/bashrc" > ~/.bash_profile`
  - restart terminal
4. Install scoop and all apps
  - goto https://scoop.sh and execute commands to install scoop
  - in terminal `scoop update`
  - add extras bucket `scoop bucket add extras`
5. Install glazewm (and zebar)
  - in terminal `scoop install glazewm zebar`
  - `mkdir ~/.glzr`
  - symlink config `ln -s ~/.config/glazewm ~/.glzr/glazewm`
  - [TODO] zebar configuration
  - copy shortcut to shell:startup to open glazewm on startup
6. Install neovim
  - in terminal `scoop install neovim vcredist2022 zig`
  - symlink config `ln -s ~/.config/nvim ~/AppData/Local/nvim`
7. Install nvm
  - goto https://github.com/nvm-sh/nvm and execute command to install nvm

## Some custom things

1. bash
  The config contains some simple aliases (similar to zsh/oh-my-zsh)
    - `l` will list, `..`, `...`, `....` will cd to parent folders 
    - `v` is shortcut for nvim, `q` or `:q` is shortcut for `exit`
2. glazewm
  Contains some extra shortcuts
    - leftWin+enter will open wt instead of cmd (wt defaults to git-bash)
    - leftWin+b will open chrome
    - leftWin+o will open screenshot tool on selection mode

