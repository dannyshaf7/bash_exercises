#!/usr/bin/env bash

# function takes 2 arguments, first and last name, checks to
# make sure the values of variable assignments aren't null
# then prints them last name, comma, first name
print_name(){
	FIRST_NAME="${1}"
	LAST_NAME="${2}"
	if [[ -n "${FIRST_NAME}" && -n "${LAST_NAME}" ]]; then
		echo "${LAST_NAME}, ${FIRST_NAME}"
	else 
		echo "You must enter first and last name."
	fi
}

# function call passes 2 arguments
print_name "$1" "$2"
