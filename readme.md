# Dotfiles on Windows 10

## Installed Apps

- AutoHotKey (Bind custom keys): https://www.autohotkey.com/

## Installed Apps (not really installed, but executables downloaded and $PATH
## variable pointed at. (those installations will also work on git-bash

- bash
  - to correctly use PATH, and create other systemvariables, execute this
    script using git-bash `echo "test -f ~/.config/bash/bashrc && . ~/.config/bash/bashrc" > ~/.bashrc`
    this will create bashrc file that points to the rc file in this repo
- neovim
  - copy nvim folder to ~/AppData/Local/nvim
- node v22.13.1 (lts)

## Not working (after security policies and vpn configurations...) Apps

- Scoop (Command-line installer for Windows): https://scoop.sh/
<!-- - Komorebi (window tiling manager): https://github.com/LGUG2Z/komorebi -->
- Yasb (status bar): https://github.com/denBot/yasb
- GlazeWM (window tiling manager and status bar): https://github.com/glzr-io/glazewm/

## Installed from Microsoft Store or from github
- Windows Terminal: https://github.com/microsoft/terminal
- PowerShell: https://github.com/PowerShell/PowerShell
<!-- - Ubuntu (WSL): https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10 -->
<!-- - Python(v3.10): https://www.python.org/downloads/release/python-31011/ -->
<!-- - Font Awesome 5 Free: https://fontawesome.com/v5/download (desktop version) -->

## Startup files
- Open start+r, then type "shell:startup", copy files in startup_folder.
__Make sure path and usernames are correct in the shortcuts__

