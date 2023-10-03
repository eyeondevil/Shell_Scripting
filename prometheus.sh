#!/bin/bash

echo
echo "Downloading the prometheus binaries."
echo

if [ -e /home/dj/prometheus-2.47.0.linux-amd64.tar.gz ];
then
	echo "File exists already, so no need to download it again."
	echo
	tar -zxvf /home/dj/prometheus-2.47.0.linux-amd64.tar.gz
else
	echo "Binary does not exist in the system so first downloading it from the Internet."
	echo
	wget -P /home/dj/ https://github.com/prometheus/prometheus/releases/download/v2.47.0/prometheus-2.47.0.linux-amd64.tar.gz
	tar -zxvf /home/dj/prometheus-2.47.0.linux-amd64.tar.gz
	rm -rf prometheus-2.47.0.linux-amd64.tar.gz
	echo "File has been downloaded and extracted to the /home/dj folder, you can start prometheus now."
fi
