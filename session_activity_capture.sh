#!/usr/bin/env bash

FILENAME=$(date +%m_%d_%Y_%H:%M:%S).log

if [[ ! -d ~/sessions ]]; then
	mkdir ~/sessions
fi

# Starting a script session
if [[ -z $SCRIPT ]]; then
	echo "Starting session activity capture."
	export SCRIPT="/home/kali/sessions/${FILENAME}"
	script -q -f "${SCRIPT}"
fi
