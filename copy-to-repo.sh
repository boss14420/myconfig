#!/usr/bin/env bash

cp -v /etc/zsh/zshrc zshrc
cp -v ~/.zshrc .zshrc
cp -v ~/.vimrc.*local .
cp -v ~/.screenrc .
cp -v ~/.tmux.conf .
mkdir .config
cp -rv ~/.config/i3 .config
cp -rv ~/.config/i3status .config
