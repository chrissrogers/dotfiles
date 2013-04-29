#!/bin/sh

# Set up symlinks
if [ -e "~/.bash_profile" ]
then
  mv ~/.bash_profile ~/.bash_profile.old
fi
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile

# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

# Install homebrew packages
brew install grc coreutils spark bash-completion wget
brew install git git-flow
brew install node go
brew install rbenv ruby-build rbenv-vars
brew install memcached redis mysql postgres mongodb elasticsearch
brew install heroku-toolbelt

# Janus
#
# vim opinions
if [ ! -d "~/.vim" ]
then
  curl -Lo- https://bit.ly/janus-bootstrap | bash
fi

exit 0
