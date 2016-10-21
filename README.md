# Config perso

Vim and tmux config and plugins
```
git clone https://github.com/Klexounet/config_klex.git
cd config_klex
sudo cp -r .bash_aliases .bashrc .tmux.conf .vim/ .vimrc ..
cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ycm_build
cd ycm_build
sudo apt-get install cmake
cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
```
## Articles

Vim : https://github.com/doomzhou/vlb/blob/master/Practical-Vim-Edit-Text-at-the-Speed-of-Thought.pdf
