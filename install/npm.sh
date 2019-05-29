#!/bin/bash
#
# npm packages
# Add or exclude packages before installation

source ./install/utils.sh
source ~/.zshrc
keep_sudo_alive

var="node"
e_header "Verifying that $var is installed..."
if which $var &> /dev/null; then
  e_success "$var is installed"
  else
  e_warning "Installing $var..."
  nvm install --lts
  nvm use --lts
fi

# Packages
npm install -g create-react-app
npm install -g create-react-native-app
npm install -g eslint
npm install -g gulp-cli
npm install -g sass
npm install -g typescript
npm install -g tslint

# Finish
e_success "Finished npm packages settings."
