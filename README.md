# WSL Ubuntu Dotfiles

This is a simple dotfiles and scripts to setup _Windows Subsystem for Linux (WSL)_ with _Ubuntu_.

## Features

_Check linked files to more details._

### Installation files

- [apps.sh](install/apps.sh) - installs applications.
- [dotfiles.sh](install/dotfiles.sh) - install and configure dotfiles.
- [npm.sh](install/npm.sh) - install npm packages.
- [setup.sh](install/setup.sh) - main installer.
- [util.sh](install/util.sh) - support functions for other installers.

### Settings Files

- [gitconfig](.gitconfig) - basic git settings.
- [gitignore_global](.gitignore_global) - global gitignore.
- [zshrc](.zshrc) - terminal configs with aliases, paths, plugins and theme.

## Prerequisites

- Windows 10
- WSL (Windows Subsystem for Linux) with Ubuntu

## Installation

**Note:** I use the [Windows 10 Setup Script](https://github.com/samuelramox/windows-setup) script to configure `Windows 10`, install some apps and `WSL`. To use the script, just download and open it with `PowerShell`. If you use it, skip to step [Install dotfiles](#install-dotfiles).

### Install WSL

If you do not already have `WSL`, follow these steps to install. Open `Powershell` by searching for it in _Search_ and _right-clicking_ for a context menu and clicking _“Run as Administrator”_. Enter the following command:

```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

After restarting, install Ubuntu from the [Microsoft Store](https://www.microsoft.com/pt-br/p/ubuntu/9nblggh4msv6?activetab=pivot:overviewtab) or through the terminal:

```
curl.exe -L -o ubuntu.appx https://aka.ms/wsl-ubuntu
```

Additionally, if you want to make WSL 2 your default architecture you can do so with this command:

```
wsl --set-default-version 2
```

Launch `Ubuntu.exe` from the _Start Menu_. You’ll be asked to enter a username and password (for sudo stuff).

### Install dotfiles

If you already have `Windows 10` and `WSL` installed, run these commands in `WSL`:

```
git clone https://github.com/samuelramox/wsl-setup.git && cd wsl-setup

./install/setup.sh
```

## Remote - WSL

Install the [Remote - WSL](https://aka.ms/vscode-remote/download/wsl) extension in VSCode to get a better experience with `WSL`.

## Reference

- [Windows Subsystem for Linux Installation Guide for Windows 10](https://aka.ms/wslinstall)
- [WSL 2](https://aka.ms/wsl2)
