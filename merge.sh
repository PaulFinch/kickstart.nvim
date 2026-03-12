#!/bin/bash

if [ ! -d ".git" ]; then
	echo ".git not found"
	exit 1
fi

if [ "$#" -eq 1 ] && [ "$1" == "clean" ]; then
	echo "Cleaning..."
	[ -d ~/.cache/nvim ] && sudo rm -rf ~/.cache/nvim
	[ -d ~/.local/share/nvim ] && sudo rm -rf ~/.local/share/nvim
fi

git remote -v
git fetch upstream
git merge upstream/master

exit 0
