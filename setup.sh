#!/bin/bash

if ! command -v brew > /dev/null; then
	# Install brew
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Homebrew already installed"
fi

# brew update


# brew install git
# brew install openssl
# brew install imagemagick
# brew install node
# brew install postgres redis sqlite3
# brew install sublime-text3

# Install sublime plugins
#TODO

# Install git-prompt


# Install extra bashrc
cp .my-bashrc.sh ~/
if [ $(grep ".my-bashrc.sh" ~/.bash_profile | wc -l) -eq 0 ]; then
	echo "Installing custom bashrc"
	echo "source ~/.my-bashrc.sh" >> ~/.bash_profile
else
	echo "Custom bashrc already installed"
fi

