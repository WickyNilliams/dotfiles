#!/bin/zsh

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# latest zsh
brew install zsh

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh

# Install everything else
brew install git
brew install node
brew install tree
brew install thefuck
brew install git-standup
brew install tldr
brew install devd
brew install jq
brew install starship

# Cask installs
brew install --cask 1password
brew install --cask google-chrome
brew install --cask firefox
brew install --cask docker
brew install --cask the-unarchiver
brew install --cask visual-studio-code
brew install --cask spotify
brew install --cask iterm2
brew install --cask flux
brew install --cask transmission
brew install --cask rectangle
brew install --cask alfred
brew install --cask keepingyouawake
brew install --cask quicklook-json
brew install --cask vlc

# Remove outdated versions from the cellar
brew cleanup