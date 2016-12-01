#!/bin/bash

# Generate ssh key
./scripts/genkey.sh

# Setup homebrew
./scripts/brew.sh

pip3 install virtualenv

# Install sublime plugins
#TODO

# Install git-prompt
#TODO

# Install extra bashrc
./scripts/bashrc.sh

# Setup git
./scripts/git.sh

# Misc config
./scripts/misc.sh

