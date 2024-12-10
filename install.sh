#!/bin/bash

# install everything
brew bundle

# symlink .config
ln -s $(pwd)/.config/ ~/.config

# symlink .gitconfig
ln -s $(pwd)/.gitconfig ~/

# symlink .tmux.conf
ln -s $(pwd)/.tmux.conf ~/

# symlink karabiner
ln -s $(pwd)/karabiner.json ~/.config/karabiner/karabiner.json

# symlink espanso config
ln -s $(pwd)/espanso/base.yml ~/Library/Application\ Support/espanso/match/base.yml

###
# Fish Shell
###

# Add Fish shell as a supported shell
echo /opt/homebrew/bin/fish >> /etc/shells

# Set fish shell as default shell
chsh -s /opt/homebrew/bin/fish

# Install Base16
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell


###
# Manual Steps
###

# Open nvim
# :PlugInstal

# Set fish shell colour
# base16-materia
