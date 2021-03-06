#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install homebrew/php/php56 --with-gmp

# Install everything else
brew install git
brew install node
brew install tree
brew install thefuck
brew install rbenv
brew install yarn
brew install git-standup

# Cask installs
brew cask install 1password
brew cask install google-chrome
brew cask install firefox
brew cask install docker
brew cask install slack
brew cask install the-unarchiver
brew cask install visual-studio-code
brew cask install spotify
brew cask install iterm2
brew cask install flux
brew cask install transmission
brew cask install divvy
brew cask install alfred
brew cask install sourcetree
brew cask install nordvpn

# Remove outdated versions from the cellar
brew cleanup