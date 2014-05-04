setopt PROMPT_SUBST

export ZSH=$DOTFILES

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

export EDITOR=vim

# if rbenv is present, configure it for use
if which rbenv &> /dev/null; then
  # enable shims and auto-completion
  eval "$(rbenv init -)"
fi

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
