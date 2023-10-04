#!/bin/bash

echo
echo "============ Please check the Docker service status and provide the Output ============"
status="`systemctl status docker | awk 'NR==3 {print}' |cut -d ':' -f 2 | cut -d '(' -f 1`"
echo $status
if [ $status = "active" ];
then
		echo "The service is up and running fine...."
else
		echo "The service is not running or is dead"
		sudo systemctl restart docker
fi
