#!/bin/bash

# Author: DJ
# This script is used to check the service status.

echo "Welcome to the service status checking script."
read -p "Enter the service name to check the current status: " service_name
if [ -z $service_name ];
then
	echo "Please enter a valid service name."
else
	sudo systemctl restart $service_name
	sudo systemctl status $service_name
	sudo systemctl enable $service_name
fi
