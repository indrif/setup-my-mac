#!/bin/bash

if ! command -v brew > /dev/null; then
	# Install brew
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Homebrew already installed"
fi

# Generate ssh key
if [ ! -f ~/.ssh/id_rsa.pub ]; then
	echo "Generate ssh key"
	ssh-keygen -t rsa -b 4096 -C "daniel.kirgiopoulos@gmail.com"
fi

brew update

brew install git
brew install openssl
brew install imagemagick
brew install node
brew install postgres redis sqlite3
brew install python3

pip3 install virtualenv

# Install sublime plugins
#TODO

# Install git-prompt
#TODO

# Install extra bashrc
cp .my-bashrc.sh ~/
if [ $(grep ".my-bashrc.sh" ~/.bash_profile | wc -l) -eq 0 ]; then
	echo "Installing custom bashrc"
	echo "source ~/.my-bashrc.sh" >> ~/.bash_profile
else
	echo "Custom bashrc already installed"
fi

# Setup git
git config --global user.name "Daniel Winther"
git config --global user.email "daniel.kirgiopoulos@gmail.com"
git config --global credential.helper osxkeychain

