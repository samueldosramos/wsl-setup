#!/bin/bash
#
# Install dotfiles and configure git

source ./install/utils.sh

# Move/replace setting files to /Home
replace ".bash_profile"     ".bash_profile"
replace ".gitconfig"        ".gitconfig"
replace ".gitignore_global" ".gitignore_global"

# Source .bash_profile
source ${HOME}/.bash_profile

# Git configs
e_header "Configure your Git settings: "
nano ${HOME}/.gitconfig

# Finish
e_success "Dotfiles update complete!"
