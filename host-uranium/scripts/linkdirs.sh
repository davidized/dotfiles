#!/usr/bin/env bash

# Link directories
link_directories() {
  # params: link to, link from
  if [ -h $1 ] # Destination is already a symlink
    then
    echo "Relinking $1"
    rm "$1"
    ln -s "$2" "$1"
  elif [ ! -e "$1" ] # Check if destination exists
    then
    echo "Linking $1 to $2"
    ln -s "$2" "$1"
  else
    echo "$1 already exists (not a symlink), skipping."
  fi
}

echo "Host Uranium: Link directories"
link_directories $HOME/2014              $OWNCLOUD/2014
link_directories $HOME/Hobbies           $OWNCLOUD/Hobbies
link_directories $HOME/Projects          $OWNCLOUD/Projects
link_directories $HOME/Downloads/ToRead  $DROPBOX/ToRead

link_directories $HOME/Papers            $OWNCLOUD/Papers
link_directories $HOME/PersonalWiki      $OWNCLOUD/PersonalWiki
#link_directories $HOME/.secret/gnupg     $HOME/.gnupg
