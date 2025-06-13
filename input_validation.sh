#!/usr/bin/env bash
USER_INPUT="${1}"

# -z returns true if value is not null
# exits the script early due to failure with exit 1
if [[ -z "${USER_INPUT}" ]]; then
   echo "You must provide an input."
   exit 1
fi

# -f returns true if value is regular file
if [[ -f "${USER_INPUT}" ]]; then
	echo "${USER_INPUT} is a file."
# -d returns true if value is directory file	
elif [[ -d "${USER_INPUT}" ]]; then
	echo "${USER_INPUT} is a directory."
else
	echo "${USER_INPUT} is not a file or directory."
fi
