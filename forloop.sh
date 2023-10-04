#!/bin/bash

for folder in $(find -type d);    # d means directory, if you want to delete file, then replace d with f.

do
	echo "The folder is $folder"
	if [ -d test ];
	then
			echo "This folder exists"
			echo "Removing this folder"
			rm -rf test
	else
			echo "The test folder does not exists"
	fi
done
