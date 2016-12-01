#!/bin/bash
cp .my-bashrc.sh ~/
if [ $(grep ".my-bashrc.sh" ~/.bash_profile | wc -l) -eq 0 ]; then
	echo "Installing custom bashrc"
	echo "source ~/.my-bashrc.sh" >> ~/.bash_profile
else
	echo "Custom bashrc already installed"
fi
