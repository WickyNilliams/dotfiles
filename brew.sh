#!/bin/zsh

# Disable analytics
brew analytics off

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# latest zsh
brew install zsh

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install wget with IRI support
brew install wget

# Install more recent versions of some macOS tools.
brew install grep

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
brew install fzf
brew install bat
brew install fnm
brew install ast-grep

# Cask installs
brew install --cask font-fira-code
brew install --cask 1password
brew install --cask google-chrome
brew install --cask firefox
brew install --cask the-unarchiver
brew install --cask visual-studio-code
brew install --cask spotify
brew install --cask iterm2
brew install --cask rectangle
brew install --cask alfred
brew install --cask keepingyouawake
brew install --cask quicklook-json
brew install --cask vlc
brew install --cask appcleaner
brew install --cask dropbox
brew install --cask obsidian
brew install --cask sublime-merge

# Remove outdated versions from the cellar
brew cleanup