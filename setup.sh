#!/bin/bash

echo " Initiated macbook setup "

echo "Installing Brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Brew Installed"

echo "Installing core libraries"
brew cask install heroku mongodb node postgresql rbenv kubernetes-cli intellij-idea
echo "Brew Libraries Installed"

echo " Installing Development Programs..............."
brew cask install grafana flycut google-chrome slack gitkraken spectacle visual-studio-code beyond-compare mongodb-compass postman android-studio microsoft-office
echo "Installed Development Programs!!!!!"

echo "Starting PostGres and MongoDB..."
brew services start mongodb
brew services start postgres

echo "Brew Services Start Complete"

echo "Installing Oh My Zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Oh My Zsh installed"

echo "Installing Bash-it"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh --silent
echo "Bash-It Complete"

echo "Add Code Script to Bash Profile"
cat << EOF >> ~/.bash_profile
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
