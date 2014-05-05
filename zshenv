export ZSH=$HOME/.zsh


if [[ "$DOTFILES" == "" ]] ; then
	export DOTFILES=$HOME/.dotfiles
fi

# Clear PATH and reset it
if [ -x /usr/libexec/path_helper ]; then
	PATH=""
	eval `/usr/libexec/path_helper -s`
fi

export PATH="$PATH:$HOME/.bin"

# all of our zsh files
typeset -U env_config_files
env_config_files=($ZSH/**/*.zshenv)

# load the path files
for file in $env_config_files
do
  source $file
done

unset env_config_files

# Local config
[[ -f ~/.zshenv.local ]] && source ~/.zshenv.local
