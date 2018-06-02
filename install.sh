#!/bin/bash

## Get path of this file
path_of_this_file=$(dirname "$0")
path_of_this_file=$( cd "${path_of_this_file}" && pwd )

# Source commonrc in bashrc
if [ -f "$HOME/.bashrc" ]; then
	if grep -Fq "if [ -f \"$path_of_this_file/.commonrc\" ]; then source \"$path_of_this_file/.commonrc\"; fi" "$HOME/.bashrc"; then
  		echo "Commonrc is already sourced in bashrc"
	else
		printf '\n' | tee -a "$HOME/.bashrc"
		echo -e 'if [ -f "'"$path_of_this_file/.commonrc"'" ]; then source "'"$path_of_this_file/.commonrc"'"; fi' | tee -a "$HOME/.bashrc"
		printf '\n' | tee -a "$HOME/.bashrc"
		echo "Add source of commonrc in bashrc"
	fi
	source "$HOME/.bashrc"
fi

# Source commonrc in zshrc
if [ -f "$HOME/.zshrc" ]; then
	if grep -Fq "if [ -f \"$path_of_this_file/.commonrc\" ]; then source \"$path_of_this_file/.commonrc\"; fi" "$HOME/.zshrc"; then
  		echo "Commonrc is already sourced in zshrc"
	else
		printf '\n' | tee -a "$HOME/.zshrc"
		echo -e 'if [ -f "'"$path_of_this_file/.commonrc"'" ]; then source "'"$path_of_this_file/.commonrc"'"; fi' | tee -a "$HOME/.zshrc"
		printf '\n' | tee -a "$HOME/.zshrc"
		echo "Add source of commonrc in zshrc"
	fi
	source "$HOME/.zshrc"
fi