#!/bin/bash
if [ ! -f ~/.ssh/id_rsa.pub ]; then
	echo "Generating ssh key..."
	ssh-keygen -t rsa -b 4096 -C "daniel.kirgiopoulos@gmail.com"
else
	echo "Ssh key already exists"
fi
