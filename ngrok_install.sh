#!/bin/bash
if [ -z "$NGROK_TOKEN" ]
then
	echo "Ngrok token unavailable, skipping installation"
else
		exec wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
		exec unzip ngrok-stable-linux-amd64.zip
		exec rm \-rf ngrok-stable-linux-amd64.zip
		exec ngrok authtoken $NGROK_TOKEN
fi
