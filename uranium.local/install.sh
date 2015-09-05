#!/usr/bin/env bash

set -e

# return 1 if global command line program installed, else 0
# example
# echo "node: $(program_is_installed node)"
function program_installed {
  # set to 1 initially
  local return_=1
  # set to 0 if not found
  type $1 >/dev/null 2>&1 || { local return_=0; }
  # return value
  echo "$return_"
}

# Install homebrew if not already installed
if program_installed brew
then
  echo "Host Uranium: Homebrew is already installed."
  echo "Updating Homebrew"
  brew update
  echo "Running brewfiles"
  brew bundle-dir
  echo "Upgrading other packages"
  brew upgrade
else
  echo "Host Uranium: Installing Homebrew"
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
  brew bundle-dir
fi

# Change shell to zsh
echo "Host Uranium: Change shell to zsh"
chsh -s /usr/local/bin/zsh

echo "Host Uranium: Set some default options"
bash $HOME/.scripts/osx.setdefaults.

# linkdirs.sh

# Tag GPG
# Symlink gpg2 to gpg??

# Tag Ruby
echo "Host Uranium: Install ruby using rbenv"
rbenv install 2.2.3
# .rbenv/default-gems will be automatically installed
# @TODO Global ruby version set in ~/.rbenv/version - it would be nice to have
# the install script pull that out automatically.

## Install gollum for PersonalWiki
#echo "Host Uranium: Install gollum ruby gem"
#gem install gollum

# Tag Vim
echo "Host Uranium: Ensure dotfiles submodules are up to date for VIM"
cd $DOTFILES
git submodule init
git submodule update

exit 0
