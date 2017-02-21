#!/bin/bash
set -xe

# Copy .dotfiles to home dir

cp .bash_aliases ~/.bash_aliases
cp .bashrc ~/.bashrc
cp .gitconfig ~/.gitconfig
cp .git-prompt.sh ~/.git-prompt.sh
cp .inputrc ~/.inputrc
cp .pylintrc ~/.pylintrc
cp .tmux.conf ~/.tmux.conf
cp -r .vim/ ~/.vim/
cp .vimrc ~/.vimrc
cp .yapf_style ~/.yapf_style
