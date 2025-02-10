# Dotfiles on Windows 10/11

## Steps

1. Make git-bash the default editor
    - Make sure Git for Windows is installed, if not complain hard about it and
    annoy the shit about it.
2. Clone repo as config folder 
    - `git clone https://github.com/aytacworld/windows.dotfiles ~/.config`
3.  Disable flickering on pressing tab
    - copy inputrc file `cp ~/.config/bash/.inputrc ~/.inputrc`
4. Point to bash file
    - `echo ". ~/.config/bash/bashrc" > ~/.bash_profile`
    - restart terminal
5. Install scoop and all apps
    - goto https://scoop.sh and execute commands to install scoop
    - in terminal `scoop update`
    - add extras bucket `scoop bucket add extras`
6. Install glazewm (and zebar)
    - in terminal `scoop install glazewm zebar`
    - make glzr folder for glazewm errorlogs and zebar configs `mkdir -p ~/.glzr`
    - set environment variable `setx GLAZEWM_CONFIG_PATH "$HOME\.config\glazewm\config.yaml`
        - if setting env variable doesn't work, just copy past do the following
            - copy the config folder `cp -R ~/.config/glazewm ~/.glzr/glazewm`
    - copy zebar config `cp -R ~/.config/zebar ~/.glzr/zebar`
    - copy shortcut to shell:startup to open glazewm on startup
7. Install neovim
    - in terminal `scoop install neovim vcredist2022 zig fd ripgrep`
    - copy config folder `cp -R ~/.config/nvim ~/AppData/Local/nvim`
8. Install nvm
    - goto https://github.com/nvm-sh/nvm and execute command to install nvm

## Some custom things

1. bash<br />
    The config contains some simple aliases (similar to zsh/oh-my-zsh)
    - `l` will list, `..`, `...`, `....` will cd to parent folders 
    - `v` is shortcut for nvim, `q` or `:q` is shortcut for `exit`
2. glazewm<br />
    Contains some extra shortcuts
    - leftWin+enter will open wt instead of cmd (wt defaults to git-bash)
    - leftWin+b will open chrome
    - leftWin+o will open screenshot tool on selection mode
3. Symlinking<br />
    This doesn't work on Windows, or I didn't manage to set it up correctly,
    so just copy paste the config folder to the correct place.
4. zebar<br />
    webfont.css is just downloaded from https://www.nerdfonts.com/assets/css/webfonts.css,
    actual font file(.woff2) is also downloaded. As those urls are blocked by security.
