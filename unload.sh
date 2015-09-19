#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

if [-e DIR/.temp_bash_profile]; then
	cp DIR/.temp_bash_profile ~/.bash_profile
	source ~/.bash_profile
fi

if [-e DIR/.temp_vimrc]; then
	cp DIR/.temp_vimrc ~/.vimrc
fi
