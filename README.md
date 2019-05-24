# Windows Setup with WSL

This is a simple dotfiles and scripts to install and customizing Windows with WSL.

**Note:** _This script was tested on a Lenovo Ideapad 330_

## Features

_Check linked files to more details._

### Installation files

- [apps.sh](install/apps.sh) - installs applications.
- [dotfiles.sh](install/dotfiles.sh) - install and configure dotfiles.
- [npm.sh](install/npm.sh) - install npm packages.
- [setup.sh](install/setup.sh) - main installer.
- [util.sh](install/util.sh) - support functions for other installers.
- [zsh.sh](install/zsh.sh) - Zsh installer.

### Settings Files

- [bash_profile](.bash_profile) - some fallback configs to bash.
- [gitconfig](.gitconfig) - basic git settings.
- [gitignore_global](.gitignore_global) - global gitignore.
- [zshrc](.zshrc) - terminal configs with aliases, paths, plugins and theme.

---

## Installation

**Note:** I use the [Automate Windows 10 Developer Machine Setup](https://gist.github.com/samuelramox/e25ae0286d827e242f46e2195057823d) script to configure Windows, install some apps and WSL. To use the script, just download and open it with `PowerShell`. If you use it, skip to step `Install dotfiles`.

### Install WSL

First, install the WSL. Open Powershell by searching for it in Cortana and right-clicking for a context menu and clicking “Run as Administrator”. Enter the following command:

```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

After restarting, install Ubuntu via terminal:

```
curl.exe -L -o ubuntu-1804.appx https://aka.ms/wsl-ubuntu-1804
```

Launch Ubuntu.exe from the Start Menu. You’ll be asked to enter a username and password (for sudo stuff).

### Install dotfiles

If you already have Windows and WSL installed, run these commands:

```
git clone https://github.com/samuelramox/windows-setup.git && cd windows-setup

./install/setup.sh
```

## Setup after installation

### SSH config

Generate the key by replacing your email:

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Copy the key with:

```
cat ~/.ssh/id_rsa.pub
```

Then add the generated key to your [GitHub](https://github.com/settings/keys)/[GitLab](https://gitlab.com/profile/keys) accounts.

### Reference

- [Windows Subsystem for Linux Installation Guide for Windows 10](https://aka.ms/wslinstall)
