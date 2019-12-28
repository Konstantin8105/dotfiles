#!/bin/bash

cd $HOME

## get dotfiles
git clone https://github.com/Konstantin8105/dotfiles.git

## initialize vim
echo ":so /home/konstantin/dotfiles/vimrc.vim" > ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


