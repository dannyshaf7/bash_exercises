#!/usr/bin/env bash

touch example_file1 example_file2 example_file3

for file in example_file*; do
	if [[ ! -f "${file}" ]]; then
		echo "File does not exist"
		break
	elif [[ "${file}" == "example_file2" ]]; then
		echo "Skipping the second file."
		continue
	else
		file "${file}"
	fi
	
	echo "${RANDOM}" > "${file}"
	rm example_file3
done

