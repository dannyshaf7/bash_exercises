#!/usr/bin/env bash

# script accepts 2 arguments on command line
# and assigns them to 2 variables; the first
# argument is first name, second is last name
# then creates a new file named output.txt
# writes current date to the file using the
# date command, printed in DD-MM-YYYY format,
# writes full name to file, makes backup
# copy of file that's named backup.txt using
# the cp command, then print content of the
# output.txt file to standard output stream

FIRST_NAME="${1}"
LAST_NAME="${2}"

date +"%d-%m-%Y" > output.txt
echo "${FIRST_NAME} ${LAST_NAME}" >> output.txt
cp "output.txt" "backup.txt"
cat "output.txt"

