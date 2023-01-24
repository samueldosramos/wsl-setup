#!/bin/bash
#
# npm packages
# Add or exclude packages before installation

source ./scripts/utils.sh
. $HOME/.asdf/asdf.sh

echo_info "Installing node and npm packages..."

# Install asdf nodejs plugin and nodejs
asdf plugin-add nodejs
asdf global nodejs system

# npm packages
PACKAGES=(
  create-react-app
  create-react-native-app
  eslint
  eslint-plugin-mdx
  gulp-cli
  prettier
  sass
  typescript
  yalc
)

for package in ${PACKAGES[@]}
do
  npm install -g $package
done

# Finish
echo_success "Finished node and npm packages settings."
