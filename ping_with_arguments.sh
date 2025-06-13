#!/usr/bin/env bash

# script pings any address provided as argument

SCRIPT_NAME="${0}"
TARGET="${1}"

echo "Running script ${SCRIPT_NAME}..."
echo "Pinging target: ${TARGET}..."
ping "${TARGET}"
