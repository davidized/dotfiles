cd $HOME

if [ ! -h $HOME/.atom ]
then
  if [ -d $HOME/.atom ]
  then
    mv $HOME/.atom $HOME/backups/atom
  fi

  ln -s $DOTFILES/atom $HOME/.atom
fi
