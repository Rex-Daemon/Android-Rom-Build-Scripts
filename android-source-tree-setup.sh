#!/bin/bash
#A simple bash script to setup android source tree 

printf "\n *** Setting up repo bin ***\n"

printf "\n> Creating bin directory in home\n"
mkdir ~/bin

printf "\n> Adding ~/bin directory to PATH\n"
PATH=~/bin:$PATH

printf "\n> Downloading repo\n"
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

printf "\n> Making ~/bin/repo executable for all users\n"
chmod a+x ~/bin/repo

printf "\n *** Exiting ***\n"
