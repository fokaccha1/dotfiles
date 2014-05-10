dotfiles
========

.vimrc
vimの設定file

```Bash
mkdir ~/dotfiles
cd ~/dotfiles
mkdir -p ./.vim/bundle
git init
git pull git@github.com:fokaccha1/dotfiles.git

ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/.vimrc ~/.vimrc
```
