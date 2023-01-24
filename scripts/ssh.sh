#!/bin/bash
#
# Generate SSH

source ./scripts/utils.sh

echo_info "Generating SSH key..."

echo_info "Create a password for SSH key:"
ssh-keygen -q -t ed25519 -o -a 100 -C "$SSH_EMAIL" -f ~/.ssh/id_ed25519 <<< y
touch ~/.ssh/config
echo -e "Host *\n IgnoreUnknown UseKeychain\n AddKeysToAgent yes\n UseKeychain yes\n" >> ~/.ssh/config
echo -e "IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
echo_warning "Use copyssh command to copy the SSH key to the clipboard."

# Finish
echo_success "Generated SSH key."
