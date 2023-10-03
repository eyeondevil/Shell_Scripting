#!/bin/bash

# Installing packages depending up on the multiple flavors of the Linux Operating System

echo "This is the script to install git Package"
echo
echo "The installation has started the process"
echo
echo "Let's first check which machine is this to proceed further with"
echo

if [ "$(uname)" == "Linux" ];
then
		echo "This is a Linux box, and installing git now"
		yum install git -y
		yum update git -y
elif [" $(uname)" == "Darwin"];
then	
		echo "This is not a Linux box"
		echo "This is a MacOS"
		brew install git
else
		echo "Skip the installation for time being as need to add that server to this script"
fi
