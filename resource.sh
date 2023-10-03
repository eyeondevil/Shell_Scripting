#!/bin/bash

#########################

# Author: DJ
# Date: 29/09/2023
# Version: v1

########################


# This script will record the resource usage for this server.

# Server CPU Usage
# Server RAM Usage
# Server Disk Usage


# This below command will provide us with this server CPU usage stats

echo "====================  The stats starts from here ===================="  > resource.txt
echo >> resource.txt

mpstat -P ALL >> resource.txt

echo >> resource.txt
echo "====================  Complition of CPU Stats ===================="  >> resource.txt
echo >> resource.txt

# The below command will provide us with the RAM usage details

free -mh >> resource.txt

echo >> resource.txt
echo "====================  Complition of RAM Usage ===================="  >> resource.txt
echo >> resource.txt

# The below command will share the disk usage of this server

df -hT  >> resource.txt

echo >> resource.txt
echo "====================  Complition of Disk Usage ===================="  >> resource.txt
echo >> resource.txt

echo "====================  The stats ends here ===================="  >> resource.txt
