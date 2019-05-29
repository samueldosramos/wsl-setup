#!/bin/bash
#
# Install Zsh and set as default shell

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

# Move/replace .zshrc to /Home
replace ".zshrc"    ".zshrc"

# Finish
e_success "Finished Zsh settings."
