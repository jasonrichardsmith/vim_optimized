#!/bin/bash


echo "Running install script"
if [[ ! -d "~/.vimold" ]];then
mkdir ~/.vimold
fi
if [ -f ~/.vimrc ];then
mv ~/.vimrc ~/.vimold/
fi
if [ -d ~/.vim ];then
mv ~/.vim ~/.vimold/
fi
ln -sf ~/vim-optimized/vimrc ~/.vimrc
ln -sf ~/vim-optimized ~/.vim
mkdir ~/.vimbackups
echo "Install complete"
echo "Old vim configurations can be found in ~/.vimold"
