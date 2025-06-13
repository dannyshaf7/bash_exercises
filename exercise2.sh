#!/usr/bin/env bash

# script that accepts 2 arguments, name and target domain
# throw error if arguments are missing and exit using exit code
# ping domain and return indication of whether ping success
# write results to csv file containing name from argument
# target domain from argument, ping result (success/fail)
# and current date/time

FILE_NAME="${1}"
TARGET_DOMAIN="${2}"

# if statement checks to make sure there are 2 arguments
if [[ -n "${FILE_NAME}" ]] && [[ -n "${TARGET_DOMAIN}" ]]; then
	echo "Two Arguments Received. Continuing..."
	# ping sends results (stdout and stderr) to the void
	# then sets the result
	if ping -c 1 "${TARGET_DOMAIN}" > /dev/null 2>&1; then
		RESULT="Success"
	else
		RESULT="Fail"
	fi
	# formatted date and time 
	TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
else
	# if less/more than 2 arguments, exits exit code 1
	echo "Error. Script requires two arguments. Exiting."
	exit 1
fi

if [[ ! -f "${FILE_NAME}.csv" ]]; then
	echo "TargetDomain,Result,Timestamp" > "${FILE_NAME}.csv"
fi
	
echo "${TARGET_DOMAIN},${RESULT},${TIMESTAMP}" >> "${FILE_NAME}.csv"

