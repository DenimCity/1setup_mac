#!/bin/bash

echo " Initiated macbook setup "

echo "Installing Brew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Brew Installed"

echp "Installing GCLOUD"
curl https://sdk.cloud.google.com | bash
echo "Installing GCLOUD FINISHED"

echo "Installing core libraries"
brew cask install heroku mongodb node postgresql rbenv kubernetes-cli intellij-idea webstorm
echo "Brew Libraries Installed"

echo " Installing Development Programs..............."
brew cask install grafana flycut google-chrome 
echo "Installed Development Programs!!!!!"

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

echo "Installing VSCODE EXTENSION"
sh "code --install-extension 2gua.rainbow-brackets
code --install-extension aaron-bond.better-comments
code --install-extension akamud.vscode-theme-onedark
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension donjayamanne.githistory
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension dunstontc.vscode-todotxt
code --install-extension eamodio.gitlens
code --install-extension eg2.vscode-npm-script
code --install-extension EQuimper.react-native-react-redux
code --install-extension Equinusocio.vsc-material-theme
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension huizhou.githd
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension letmaik.git-tree-compare
code --install-extension mauve.terraform
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension mquandalle.graphql
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension PeterJausovec.vscode-docker
code --install-extension Prisma.vscode-graphql
code --install-extension redhat.java
code --install-extension redhat.vscode-yaml
code --install-extension robertohuertasm.vscode-icons
code --install-extension secanis.jenkinsfile-support
code --install-extension Shan.code-settings-sync
code --install-extension shd101wyy.markdown-preview-enhanced
code --install-extension stpn.vscode-graphql
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension technosophos.vscode-helm
code --install-extension vscjava.vscode-java-debug
code --install-extension vscjava.vscode-java-pack
code --install-extension vscjava.vscode-java-test
code --install-extension vscjava.vscode-maven
code --install-extension wayou.vscode-todo-highlight
code --install-extension yzhang.markdown-all-in-one
code --install-extension zhuangtongfa.Material-theme 
code --install-extension erd0s.terraform-autocomplete
code --install-extension foxundermoon.shell-format
code --install-extension janjoerke.jenkins-pipeline-linter-connector
code --install-extension marlon407.code-groovy
code --install-extension naco-siren.gradle-language
code --install-extension shakram02.bash-beautify"

echo "VSCODE EXTENSIONS INSTALLED"
