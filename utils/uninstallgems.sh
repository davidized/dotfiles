#!/usr/bin/env bash

# From: https://gist.github.com/IanVaughan/2902499

uninstall() {
  list=`gem list --no-versions`
  for gem in $list; do
    gem uninstall $gem -aIx
  done
  gem list
  gem install bundler
}

#rbenv versions --bare
RBENVPATH=`rbenv root`
echo $RBENVPATH
RUBIES=`ls $RBENVPATH/versions`
for ruby in $RUBIES; do
  echo '---------------------------------------'
  echo $ruby
  rbenv local $ruby
  uninstall
done
