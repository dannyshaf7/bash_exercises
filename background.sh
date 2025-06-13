#!/usr/bin/env bash

# script sends sleep command to background
echo "Sleeping for 10 second..."
sleep 10 &

# script creates a file
echo "Creating file test123"
touch test123

# script deletes a file
echo "Deleting file test123"
rm test123
