#!/bin/bash

cd $HOME

## get dotfiles
echo "git clone https://github.com/Konstantin8105/dotfiles.git"
echo "cd dotfiles"

## initialize vim
echo "prepare vim"
echo ":so /home/konstantin/dotfiles/vimrc.vim" > ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

## bashit
echo "bashit"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

## font
echo "Install font"
