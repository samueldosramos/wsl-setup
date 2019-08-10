#!/bin/bash
#
# Install Zsh and set as default shell
# Install dotfiles and configure git

source ./install/utils.sh
keep_sudo_alive

# Install Zsh:
sudo apt -y install zsh

# Install oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Install some external plugins:
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

# Set Zsh as your default shell:
chsh -s /bin/zsh

# Move/replace setting files to /Home
replace ".gitconfig"        ".gitconfig"
replace ".gitignore_global" ".gitignore_global"
replace ".zshrc"            ".zshrc"

# Git configs
e_header "Configure your Git settings: "
nano ${HOME}/.gitconfig

# Finish
e_success "Dotfiles update complete."
