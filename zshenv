if [ -x /usr/libexec/path_helper ]; then
	PATH=""
	eval `/usr/libexec/path_helper -s`
fi

if [[ "$DOTFILES" == "" ]] ; then
  export DOTFILES=$HOME/.dotfiles
fi

# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH:$HOME/.bin

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"

#gnupg
export GNUPGHOME=$HOME/.secret/gnupg

# HISTORY
HISTSIZE=3000
SAVEHIST=3000
HISTFILE=~/.zsh_history
