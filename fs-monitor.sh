#!/bin/bash

# Author: DJ
# This script will check the file system utilization every 120 seconds and store it in a file.

while true
do
date >> /home/dj/fs-monitor.txt                                        # By default the log files are stored in /var/log path, hence I created a custom log file
echo "==========================================================="
sudo df -hT >> /home/dj/fs-monitor.txt
echo "==========================================================="
sleep 120
done
