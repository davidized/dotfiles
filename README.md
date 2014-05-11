# Dotfiles

## Setup


## Todo
* [ ] scripts directories - need to determine how I want things set up/how to run them
  - I'm thinking something like scripts/osx.install.sh and having an install.sh which
  runs each of the *.install.sh scripts in the folder. The individual install files come
  from the tags/hosts which are installed initially
  - I would like to be able to create individual Brewfiles for each tag
  - Would be nice to rework the zsh prompt so that it only included git or rbenv
  components when those tags are installed
  - OR some kind of dependency system for tags
  - Hosts can have install.sh, tags should have tag.install.sh. Host install.sh will
  run the tag.install.sh files.
* [x] Add SSH config to host-uranium
  - I can't find a good way to maintain multiple ssh config files that will work
  both with ssh and when git tries to use them so I'm keeping ssh config in the
  .secret directory for now.

## Other Notes
The history for this repo is a bit wonky as I removed some sensitive files from it before putting it up on github. As a result the commit messages may reference files or changes that no longer exist.

## Resources
The following articles and repositories have provided ideas and code that have come in handy as I've created my dotfiles.

* Zach Holman's Dotfiles - (article)[http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/] (repo)[https://github.com/holman/dotfiles]
* (oh-my-zsh)[https://github.com/robbyrussell/oh-my-zsh]
* (Mathias Bynes dotfiles)[https://github.com/mathiasbynens/dotfiles]

* (ze-best-zsh-config)[https://github.com/spicycode/ze-best-zsh-config]
* (zshuery)[https://github.com/myfreeweb/zshuery]
* (skwp/dotfiles)[https://github.com/skwp/dotfiles]

* (RCM)[https://github.com/thoughtbot/rcm]
* (thoughtbot/dotfiles)[https://github.com/thoughtbot/dotfiles]
* (tsigo/dotfiles)[https://github.com/tsigo/dotfiles-rcm]
* (lackac/dotfiles)[https://github.com/lackac/dotfiles]
