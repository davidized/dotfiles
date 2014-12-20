# if rbenv is present, configure it for use
if which rbenv &> /dev/null; then
  # enable shims and auto-completion
  eval "$(rbenv init -)"
fi
