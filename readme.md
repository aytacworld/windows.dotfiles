# Dotfiles on Windows 10/11

This doc is for secure devbox environment, without admin rights.
If firewall or organisation isn't blocking a lot of url's, most of the steps
will work.

## Steps

1. Make git-bash the default editor
    - Make sure Git for Windows is installed, if not complain hard about it and
    annoy the shit about it.
2. Clone repo as config folder 
    - `git clone https://github.com/aytacworld/windows.dotfiles ~/.config`
3.  Disable flickering on pressing tab
    - copy inputrc file `cp ~/.config/bash/.inputrc ~/.inputrc`
4. Point to bash file
    - `echo "source $HOME/.config/bash/bashrc" > ~/.bashrc`
    - restart terminal
5. Install scoop and some apps
    - Execute the following scripts IN POWERSHELL
        ```
        Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
        Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
        ```
        - _source https://scoop.sh_
    - in terminal `scoop update`
    - add extras bucket `scoop bucket add extras`
    - install wget `scoop install wget`
6. Install glazewm (and zebar)
    - in terminal `scoop install glazewm zebar`
    - make glzr folder for glazewm errorlogs and zebar configs `mkdir -p ~/.glzr`
    - set environment variable `setx GLAZEWM_CONFIG_PATH "$HOME\.config\glazewm\config.yaml`
        - if setting env variable doesn't work, just copy past do the following
            - copy the config folder `cp -R ~/.config/glazewm ~/.glzr/glazewm`
    - copy zebar config `cp -R ~/.config/zebar ~/.glzr/zebar`
    - copy shortcut to shell:startup to open glazewm on startup
7. Install nvm
    - `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash`
        - _source https://github.com/nvm-sh/nvm and execute command to install nvm_
8. Install neovim
    - in terminal `scoop install neovim vcredist2022 zig fd ripgrep`
        - _installing vcredist2022 will ask admin user login (twice), just
          close the login dialog and ignore it, the needed package will still
          be installed on user space_
        - _zig is needed as we don't have a c/c++ compiler available, and 
          can't install them_
        - _fd and ripgrep are dependencies for some neovim plugins_
    - copy config folder `cp -R ~/.config/nvim ~/AppData/Local/nvim`
    - install node plugin `npm i -g neovim`

## Some custom things

1. Powershell<br />
    The only time you need to use Powershell is to install scoop, all the rest
    is git-bash.
2. bash<br />
    The config contains some simple aliases (similar to zsh/oh-my-zsh)
    - `l` will list all files(hidden included) with details (`ls -lah`)
    - `..`, `...`, `....` will cd to parent folders
    - `v` is shortcut for nvim
    - `q` or `:q` is shortcut for `exit`
3. glazewm<br />
    Contains some extra shortcuts
    - leftWin+enter will open wt instead of cmd (wt defaults to git-bash)
    - leftWin+b will open chrome
    - leftWin+o will open screenshot tool on selection mode
4. Symlinking<br />
    This doesn't work on Windows, or I didn't manage to set it up correctly,
    so just copy paste the config folder to the correct place.
5. zebar<br />
    webfont.css is just downloaded from https://www.nerdfonts.com/assets/css/webfonts.css,
    actual font file(.woff2) is also downloaded. As those urls are blocked by security.
6. browser<br />
    Using MS Edge, as it wasn't possible to install another browser, so using the
    default installed browser.
7. neomvim tree-sitter
    Can't install this tool(using scoop), as it depends on 7zip, and it is blocked.

## Troubleshooting

### `nvm use <version>` doesn't use the version

If you installed nvm, via github(https://github.com/coreybutler/nvm-windows)
or scoop(scoop install nvm). It it possible that it doesn't work as intended.

You can install nvm-sh(https://github.com/nvm-sh/nvm) using git-bash.
1. open git-bash
2. remove nvm-windows (if installed with scoop just execute `scoop uninstall nvm`)
3. create bashrc file if it doesn't exists `touch ~/.bashrc`
4. install nvm-sh `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash`
5. restart git-bash OR source bashrc file by running `source ~/.bashrc`
6. enjoy nvm
