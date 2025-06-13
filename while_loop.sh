#!/bin/bash
STOP_FLAG="stop_loop.txt"

# -f checks if value exists and is a normal file, 
# ! makes it check if it doesn't exist or is not
# a normal file, like a directory
while [[ ! -f "${STOP_FLAG}" ]]; do
	echo "The file ${STOP_FLAG} doesn't exist yet."
	echo "Will check again in 2 seconds..."
	sleep 2
	echo "..."
done

echo "File found! Exiting..."
