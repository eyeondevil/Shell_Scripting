#!/bin/bash

# Author: DJ
# This script will be checking the error logs.

error_file=`cat /var/log/messages`        # this line is not mandatory to mention.
matched_error=`grep -i error /var/log/messages`
echo $matched_error
if [ $? -eq 0 ];                  # $? will display the last command whether it ran successfully or not.
then
		echo "Found the error in OS logs: $matched_error."
else
		echo "No errors were found in the messages file."
fi
