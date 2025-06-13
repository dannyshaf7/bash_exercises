#!/usr/bin/env bash
FILE="output.txt"

touch "${FILE}"
until [[ -s "${FILE}" ]]; do
	echo "${FILE} is empty..."
	echo "Checking again in 2 seconds..."
	sleep 2
	echo "Checking..."
done

echo "${FILE} now appears to contain data!"
