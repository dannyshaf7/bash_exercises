#!/usr/bin/env bash

echo "Hello World!" > file.txt

if [[ -f "file.txt" ]] && [[ -s "file.txt" ]]; then
	echo "The file both exists and contains data."
fi
