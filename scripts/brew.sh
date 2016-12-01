#!/bin/bash
if ! command -v brew > /dev/null; then
	# Install brew
	echo "Installing Homebrew..."
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Homebrew already installed"
fi

echo "Updating Homebrew..."
brew update

echo "Installing components..."
brew install git
brew install openssl
brew install imagemagick
brew install node
brew install postgres redis sqlite3
brew install python3
