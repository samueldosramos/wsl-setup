#!/bin/bash
#
# WSL setup script
# Font: https://github.com/samuelramox/wsl-setup
# Main install script

source ./install/utils.sh
keep_sudo_alive

# Install applications
seek_confirmation "Warning: This step install applications."
if is_confirmed; then
  e_header "Please, configure you applications before installation:"
  nano ${DOTFILES_DIRECTORY}/install/apps.sh
  bash ./install/apps.sh
else
  e_warning "Skipped applications install."
fi

# Dotfiles configs
seek_confirmation "Warning: This step may overwrite your existing dotfiles and git configs."
if is_confirmed; then
  bash ./install/dotfiles.sh
else
  e_warning "Skipped dotfiles settings."
fi

# Install npm packages
seek_confirmation "Warning: This step install npm packages"
if is_confirmed; then
  bash ./install/npm.sh
else
  e_warning "Skipped npm settings update."
fi

# Generate ssh
seek_confirmation "Warning: This step generate ssh"
if is_confirmed; then
  generate_ssh
  e_warning "After finishing the installation, use copyssh command to copy the ssh key to the clipboard."
else
  e_warning "Skipped ssh settings."
fi

# Create a directory for projects and development
e_header "Creating Developer directory in Home"
mkdir ${HOME}/Developer

# Cleanup cached downloads and remove the installation zip and folder
e_header "Removing unnecessary files"
sudo apt -y autoremove
rm -rf ${HOME}/wsl-setup.tar.gz
rm -rf ${HOME}/wsl-setup.zip
rm -rf ${DOTFILES_DIRECTORY}

# Finish
e_success "Reboot and enjoy!"
