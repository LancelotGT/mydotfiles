#!/bin/bash
VIMFOLDER = ./.vim
VIMRC = ./.vimrc

if [ -d "$VIMFOLDER" ]; then
    echo "Folder $VIMFOLDER exists. Move original one to ./.vim_old"
    mv $VIMFOLDER ./.vim_old 
fi

if [ -f "$VIMRC" ];
then
    echo "File $VIMRC exists. Move original one to ./.vim_rc_old"
    mv $VIMRC ./.vim_rc_old
fi

# configure vim using ma6174's conf
echo "START CONFIGURING VIM"
wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x

# Use my own vimrc
cp ./.vimrc ~/.vimrc 
