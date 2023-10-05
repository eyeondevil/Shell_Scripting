#!/bin/bash

# Author: DJ
# This script is used to install multiple packages.

if [ $# -eq 0 ]
then
	echo "Usage: Please provide the software names as command line arguments."
	exit 1
fi

if [ $(id -u) -ne 0 ]
then
	echo "Please run this from root user or with sudo priviledges."
	exit 2
fi

for software in $@
do 
	if which $software &> /dev/null
	then
		echo "The $software is already installed."
	else
		echo "Installing $software ......."
		yum install $software -y &> /dev/null
		if [ $? -eq 0 ]
		then
			echo "Successfully installed the $software package."
		else
			echo "Unable to install $software."
		fi
	fi
done
