#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [-e ~/.bash_profile]; then
	cp ~/.bash_profile DIR/.temp_bash_profile
fi
cp DIR/.bash_profile ~/
source ~/.bash_profile

if [-e ~/.vimrc]; then
	cp ~/.vimrc DIR/.temp_vimrc 
fi
cp DIR/.vimrc ~/
