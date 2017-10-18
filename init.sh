#!/bin/bash

# TODO : make that generic
cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
cp .zshrc ~/.zshrc

# -- iTerm --
cp com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# -- Spectacle --
# make sure Spectacle folder exists
mkdir -p ~/Library/Application\ Support/Spectacle
# copy settings
cp Shortcuts.json ~/Library/Application\ Support/Spectacle/Shortcuts.json