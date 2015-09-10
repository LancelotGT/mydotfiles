#!/bin/bash
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y zsh

# configure vim
git clone https://github.com/derekwyatt/vim-config.git ~/.vim
ln ~/.vim/vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
git clone https://github.com/LancelotGT/mydotfiles.git
mv ~/mydotfiles/.vimrc ~/.vimrc 

# install tmux
sudo apt-get build-dep tmux
git clone https://github.com/tmux/tmux.git
cd ~/tmux
./autogen.sh
./configure && make
ln -s ~/tmux/tmux /bin/tmux 

# install gnu toolchain
sudo apt-get install -y build-essential
sudo apt-get install -y gdb gdb-doc

