# Dotfiles
The dotfiles (and a few other random helpful files) I currently have on my computer. Since my primary computers are Macs currently most everything is pretty Mac centric. At some point I may get around to updating things so that they work on Linux as well, but there is no pressing need for that at the moment.

I consider this a work in progress and I try to keep things as up to date as possible as I install or remove tools. That being said, please use anything in this repository at your own risk. Especially the install scripts as I don't actually use them all that much myself and am not 100% sure they're safe to run without screwing up your stuff.

## Setup
* My dotfiles live in ~/.dotfiles with some of my more sensitive items living in ~/.secret (ssh, gpg, etc).
* I'm using [RCM](https://github.com/thoughtbot/rcm) to manage my dotfiles which has been a bit of a pain to migrate to, but so far has made things more organized and (theoretically) easier to install and share.
* If you're on OS X you can adapt the host-uranium/scripts/install.sh to your purposes. (Use at your own risk - I haven't done a whole lot of testing on this)

## Todo
* [x] scripts directories - need to determine how I want things set up/how to run them
* [x] Update .secret directory to also use rcm. Include directory structure in .dotfiles directory for reference.
  - This is mostly complete, but still needs some tweaking
* [ ] Create tag-python
* [ ] install.sh should pull in preferred ruby version from tag-ruby/rbenv/version automatically

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
