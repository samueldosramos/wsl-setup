#!/bin/bash
#
# WSL Ubuntu Dotfiles
# Font: https://github.com/samuelramox/wsl-setup
# Main install script

source ./scripts/utils.sh

# Add your data
echo_info "Add your data:"
nano ./scripts/user.sh
source ./scripts/user.sh

# Install applications
bash ./scripts/apps.sh

# Install dotfiles
bash ./scripts/dotfiles.sh

# Setting node and npm packages
bash ./scripts/npm.sh

# Generate SSH key
if [[ $SSH_EMAIL ]]; then
  bash ./scripts/ssh.sh
fi

# Create a directory for projects and development
echo_info "Creating Developer directory in Home directory..."
mkdir ${HOME}/Developer ${HOME}/Developer

# Cleanup cached downloads and remove the installation zip and folder
echo_info "Removing unnecessary files..."
sudo apt -y autoremove
rm -rf ../scripts.zip
rm -rf ${DOTFILES_DIRECTORY}

# Finish
echo_success "Reboot and enjoy!"
