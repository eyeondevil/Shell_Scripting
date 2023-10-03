#!/bin/bash

echo
echo "==================== Disk Utilization Info ===================="
echo

echo "Check the disk utilization in Linux system"
disk_size=`df -hT | grep "/dev/mapper/almalinux-root" | awk '{print $6}' | cut -d '%' -f 1`
echo "$disk_size% of disk is filled"
echo "$disk_size% of disk is filled"  >> diskutilization.txt

if [ $disk_size -gt 19 ];
then
        echo "disk is utilized more than allocated 19%. Please either delete some files or expand the disk space."
else
        echo "Enough disk is available, no need to take any action."
fi
