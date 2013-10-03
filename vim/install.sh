cd $HOME

if [ ! -h $HOME/.vim ]
then
	if [ -d $HOME/.vim ]
	then
		mv $HOME/.vim $HOME/backups/ssh
	fi

	ln -s $DOTFILES/vim $HOME/.vim
fi