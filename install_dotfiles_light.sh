#!/bin/bash
set -xe

# Copy .dotfiles to home dir

cp .bash_aliases ~/.bash_aliases
cp .bashrc ~/.bashrc
cp .inputrc ~/.inputrc
cp .pylintrc ~/.pylintrc
cp .tmux.conf ~/.tmux.conf
cp -r .vim/ ~/.vim/
cp .vimrc_light ~/.vimrc
cp .yapf_style ~/.yapf_style
