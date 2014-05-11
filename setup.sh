#!/bin/bash

[ ! -d $HOME/dotfiles/.vim/bundle ] && mkdir -p $HOME/dotfiles/.vim/bundle && git clone git://github.com/Shougo/neobundle.vim $HOME/dotfiles/.vim/bundle/neobundle.vim

DOT_FILES=(.vimrc .vim)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/dotfiles/$file $HOME/$file
done

vim -c ':NeoBundleInstall'
