# Dotfiles
The dotfiles (and a few other random helpful files) I currently have on my computer. Since my primary computers are Macs currently most everything is pretty Mac centric. At some point I may get around to updating things so that they work on Linux as well, but there is no pressing need for that at the moment.

I consider this a work in progress and I try to keep things as up to date as possible as I install or remove tools. That being said, please use anything in this repository at your own risk. Especially the install scripts as I don't actually use them all that much myself and am not 100% sure they're safe to run without screwing up your stuff.

## Setup
* My dotfiles live in ~/.dotfiles with some of my more sensitive items living in ~/.secret (ssh, gpg, etc). These are then either symlinked into their original locations or settings are changed so the programs look in the correct place.
* I have begun using [RCM](https://github.com/thoughtbot/rcm) to manage my dotfiles which has been a bit of a pain to migrate to, but so far has made things more organized and (theoretically) easier to install and share.

## Todo
* [ ] scripts directories - need to determine how I want things set up/how to run them
  - I'm thinking something like scripts/osx.install.sh and having an install.sh which
  runs each of the *.install.sh scripts in the folder. The individual install files come
  from the tags/hosts which are installed initially
  - I would like to be able to create individual Brewfiles for each tag
  - Would be nice to rework the zsh prompt so that it only included git or rbenv
  components when those tags are installed
  - OR some kind of dependency system for tags (run rcup -t in the install scripts??)
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

* Zach Holman's Dotfiles - [article](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/) [repo](https://github.com/holman/dotfiles)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [Mathias Bynes dotfiles](https://github.com/mathiasbynens/dotfiles)

* [ze-best-zsh-config](https://github.com/spicycode/ze-best-zsh-config)
* [zshuery](https://github.com/myfreeweb/zshuery)
* [skwp/dotfiles](https://github.com/skwp/dotfiles)

* [RCM](https://github.com/thoughtbot/rcm)
* [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles)
* [tsigo/dotfiles](https://github.com/tsigo/dotfiles-rcm)
* [lackac/dotfiles](https://github.com/lackac/dotfiles)
