#!/bin/bash

echo
echo "This script will allow us to delete the files which are older than 30 days."
echo

path="$1"
echo $path
find $path -mtime +30 -delete 
if [ $? -eq 0 ];
then
    echo "The older files have been deleted successfully."
else
	echo "Either no older files found, or an issue in this script or else deletion was having an issue."
fi
