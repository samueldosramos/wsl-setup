#!/bin/bash
#
# Some functions used in install scripts

# Header logging
e_header() {
  printf "\n$(tput setaf 3)%s$(tput sgr0)\n" "$@"
  sleep 2
}

# Success logging
e_success() {
  printf "\n$(tput setaf 2)✓ %s$(tput sgr0)\n" "$@"
  sleep 2
}

# Error logging
e_error() {
  printf "\n$(tput setaf 1)x %s$(tput sgr0)\n" "$@"
  sleep 2
}

# Warning logging
e_warning() {
  printf "\n$(tput setaf 136)! %s$(tput sgr0)\n" "$@"
  sleep 2
}

# Ask for confirmation before proceeding
seek_confirmation() {
  printf "\n"
  e_warning "$@"
  read -p "Continue? (y/n) " -n 1
  printf "\n"
}

# Test whether the result of an 'ask' is a confirmation
is_confirmed() {
  if [[ "$REPLY" =~ ^[Yy]$ ]]; then
    return 0
  fi
  return 1
}

# Print a question
ask() {
    e_header "$1"
    read -r
}

# Keep-alive: update existing `sudo` time stamp until process has finished
keep_sudo_alive() {
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
}

# Check if a application is installed
app_is_installed() {
  e_header "Verifying that $1 is installed..."

  # Set to 1 initially
  local return_=1

  # Set to 0 if not found
  type $1 >/dev/null 2>&1 || { local return_=0; }

  # Return value
  if [ $return_ = 0 ]; then
    e_warning "Installing $1..."
    sudo apt -y $1
  else
    e_success "$1 is installed"
  fi
}

# Force move/replace files
DOTFILES_DIRECTORY="$PWD"

replace() {
  mv -f "${DOTFILES_DIRECTORY}/${1}" "${HOME}/${2}"
}

# Generate ssh key
generate_ssh() {
    ask "Please provide an email address: " && printf "\n"
    ssh-keygen -t rsa -b 4096 -C "$REPLY"
    e_success "Generate SSH keys"
}
