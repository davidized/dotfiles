setopt PROMPT_SUBST

source $DOTFILES/zsh/prompt.zsh

# load our own completion functions
fpath=(~/.zsh/completion $fpath)

# initialize autocomplete here, otherwise functions won't be loaded
autoload -U compinit
compinit

# load custom executable functions
for function in ~/.zsh/functions/*; do
  source $function
done

# HISTORY
HISTSIZE=3000
SAVEHIST=3000
HISTFILE=~/.zsh_history

# all of our zsh files
typeset -U config_files
config_files=($ZSH/**/*.zshrc)

# load the path files
for file in $config_files
do
  source $file
done

unset config_files

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
