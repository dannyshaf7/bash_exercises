#!/usr/bin/env bash

FILENAME="if_flow_control.txt"

if [[ -f "${FILENAME}" ]]; then
	echo "${FILENAME} already exists."
	exit 1
else 
	touch "${FILENAME}"
fi
