export ZSH=$HOME/.zsh


if [[ "$DOTFILES" == "" ]] ; then
	export DOTFILES=$HOME/.dotfiles
fi

# Clear PATH and reset it
if [ -x /usr/libexec/path_helper ]; then
	PATH=""
	eval `/usr/libexec/path_helper -s`
fi

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH:$HOME/.bin"

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
