#!/usr/bin/env bash

VARIABLE_ONE="10"
VARIABLE_TWO="20"

if [[ "${VARIABLE_ONE}" -gt "${VARIABLE_TWO}" ]]; then
	echo "${VARIABLE_ONE} is greater than ${VARIABLE_TWO}."
elif [[ "${VARIABLE_ONE}" -eq "${VARIABLE_TWO}" ]]; then
	echo "${VARIABLE_ONE} and ${VARIABLE_TWO} are equal."
else
	echo "${VARIABLE_ONE} is less than ${VARIABLE_TWO}."
fi

