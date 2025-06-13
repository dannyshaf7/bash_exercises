#!/usr/bin/env bash

ls -l > /dev/null
echo "The exit code of the ls command was: $?"

lzl 2> /dev/null
echo "The exit code of the non-existant lzl command was: $?"
