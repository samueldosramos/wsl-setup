# WSL Debian/Ubuntu Dotfiles

This is a simple dotfiles and scripts to setup _Windows Subsystem for Linux (WSL)_ with _Debian and Ubuntu based Linux distributions_.

## Features

_Check linked files to more details._

### Installation files

- [apps.sh](scripts/apps.sh) - installs applications.
- [dotfiles.sh](scripts/dotfiles.sh) - installs _Oh My Zsh_, _.zshrc_ and _Git_ configs.
- [npm.sh](scripts/npm.sh) - _Node.js_ and _npm_ settings.
- [setup.sh](setup.sh) - main installer.
- [ssh.sh](scripts/ssh.sh) - generate _SSH_.
- [user.sh](scripts/user.sh) - user data to configuration of _Git_ and _SSH_.
- [utils.sh](scripts/utils.sh) - support functions for other installers.
- [.zshrc](scripts/.zshrc) - terminal configs with aliases, paths, plugins and theme (this file is permanent after installation).

## Prerequisites

- Updated Windows 10 or later **(recommended is Windows 11)**
- WSL 2 with _Debian/Ubuntu_ based

## Installation

**Note:** I use the [Windows 11 Setup Script](https://github.com/samuelramox/windows-setup) script to configure `Windows`, install some apps and `WSL`. To use the script, just download and open it with `PowerShell`. If you use it, skip to step [Install dotfiles](#install-dotfiles).

### Install WSL

If you do not already have `WSL`, follow these steps to install. Open `Powershell` by searching for it in _Search_ and _right-clicking_ for a context menu and clicking _“Run as Administrator”_. Enter the following command:

```
wsl --install
```

After restarting, launch `Ubuntu.exe` from the _Start Menu_. You’ll be asked to enter a username and password (for sudo stuff).

### Install dotfiles

If you already have `Windows` and `WSL` installed, run these commands in `WSL`:

```
git clone https://github.com/samuelramox/wsl-setup.git
chmod 700 wsl-setup/ -R
cd wsl-setup
./setup.sh
```

## Remote - WSL

Install the [Remote - WSL](https://aka.ms/vscode-remote/download/wsl) extension in VSCode to get a better experience with `WSL`.

## Reference

- [Windows Subsystem for Linux Installation Guide for Windows](https://aka.ms/wslinstall)
- [WSL 2](https://aka.ms/wsl2)

## Utilities

- [Oh My Posh](https://ohmyposh.dev)
- [Winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/)
- [Winstall](https://winstall.app)
