#!/usr/bin/env bash

# function compares user id to expected value of
# root user id 0, returns success=0 or failure=1
check_if_root(){
	if [[ "${EUID}" -eq "0" ]]; then
		return 0
	else
		return 1
	fi
}

# if function returns success/0=true, user is root
if check_if_root; then
	echo "Current user is root."
else
	echo "Current user is not root."
fi

