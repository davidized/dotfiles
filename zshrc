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

# if rbenv is present, configure it for use
if which rbenv &> /dev/null; then
  # enable shims and auto-completion
  eval "$(rbenv init -)"
fi

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# added by travis gem
[ -f /Users/david/.travis/travis.sh ] && source /Users/david/.travis/travis.sh
