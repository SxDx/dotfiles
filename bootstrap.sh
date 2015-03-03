#!/bin/sh

sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "installing oh-my-zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update && brew upgrade

echo "installing cask..."
brew tap phinze/homebrew-cask
brew install brew-cask
brew cask upgrade

sh "scripts/binaries.sh"
sh "scripts/apps.sh"
sh "scripts/defaults.sh"

brew tap thoughtbot/formulae
brew install rcm

# Load dotfiles
env RCRC=$HOME/dotfiles/rcrc rcup

# After bootstrap stuff
brew cleanup
shutdown -r now