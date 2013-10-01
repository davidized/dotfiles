setopt PROMPT_SUBST

autoload -U compinit
compinit

export ZSH=$HOME/.zsh

export PATH=/Users/david/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Server.app/Contents/ServerRoot/usr/bin:/Applications/Server.app/Contents/ServerRoot/usr/sbin:$PATH

for config_file ($ZSH/*.zsh) source $config_file