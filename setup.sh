#!/bin/sh
if [ "$1" = "" ]; then
  arch=mac
else
  arch=$1
fi

echo "link .vim"
ln -s `pwd`/vim/dot.vim ~/.vim
echo "link .vimrc"
ln -s `pwd`/vim/dot.vimrc ~/.vimrc
echo "install neobundle"
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

echo "link .zshrc"
ln -s `pwd`/zsh/dot.zshrc ~/.zshrc

echo "link .gitconfig"
ln -s `pwd`/git/dot.gitconfig ~/.gitconfig

echo "link .screenrc"
ln -s `pwd`/screen/dot.screenrc ~/.screenrc
