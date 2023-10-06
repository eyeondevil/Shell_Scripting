#!/bin/bash

# Author: DJ
# This script will be be a calculator script.

echo
echo "This is for function testing purposes: "
echo
disk_utilization()                      # This is the Funcation name what we have assigned.
{
disk=`df -hT`                           # The actual command inside this function.
echo "The disk utiliation is : $disk "
echo
}
if [[ $? -eq 0 ]];
then
    echo "This is the disk usage report"
    echo
    disk_utilization
else
    echo "The disk has some issues: "
fi
