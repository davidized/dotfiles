cd $HOME

if [ ! -h $HOME/.ssh ]
then
	if [ -d $HOME/.ssh ]
	then
		mv $HOME/.ssh $HOME/backups/ssh
	fi

	ln -s $DOTFILES/ssh $HOME/.ssh
fi