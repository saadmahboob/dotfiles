#!/bin/sh

# Enter our directory and initialize our submodules
echo "Initializing git repos..."
cd ~/.dotfiles
git submodule update --init --recursive
echo " "


# Backup old links
echo "Backing up old data..."
mkdir ~/dotfiles.bak
mv ~/.gitconfig ~/.gvimrc ~/.vim ~/.vimrc ~/.zshrc ~/dotfile.bak
echo " "


# Create our hardlinks
echo "Creating hardlinks in home directory..."
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gvimrc    ~/.gvimrc
ln -s ~/.dotfiles/vim       ~/.vim
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/zshrc     ~/.zshrc
echo " "

echo "Install complete!"
