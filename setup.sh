#!/bin/bash
sudo apt-get update
sudo apt-get install -y git
sudo apt-get install -y zsh

# configure vim
cp ~/mydotfiles/.vimrc ~/.vimrc  
cp -r ~/mydotfiles/.vim ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
git clone https://github.com/LancelotGT/mydotfiles.git

# install tmux
sudo apt-get build-dep tmux
git clone https://github.com/tmux/tmux.git
cd ~/tmux
./autogen.sh
./configure && make
sudo make install

# install gnu toolchain
# sudo apt-get install -y build-essential
# sudo apt-get install -y gdb gdb-doc

# install qemu
# sudo apt-get install -y qemu libvirt-bin
# sudo apt-get install gcc-multilib
