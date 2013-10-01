if [ -x /usr/libexec/path_helper ]; then
	PATH=""
	eval `/usr/libexec/path_helper -s`
fi

# if rbenv is present, configure it for use
if which rbenv &> /dev/null; then
	# Put the rbenv entry at the front of the line
	export PATH="$HOME/.rbenv/bin:$PATH"
	# enable shims and auto-completion
	eval "$(rbenv init -)"
fi 