#!/usr/bin/env bash

VARIABLE_ONE="nostarch"
VARIABLE_TWO="No Starch"

if [[ "${VARIABLE_ONE}" == "${VARIABLE_TWO}" ]]; then
    echo "The values are equal."
else
    echo "The values are different." 
fi
