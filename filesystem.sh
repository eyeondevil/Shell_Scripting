#!/bin/bash

echo
echo "This program will get the first 10 biggest file in the file system passed via the positional argument."
echo

path="$1"
echo $path
du -ah $path | sort -hr | head -n 7 > /home/dj/filesize.txt
echo "This is the output for the above script$path."
cat /home/dj/filesize.txt
