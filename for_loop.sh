#!/usr/bin/env bash

# $@ expands all passed arguments, preserved as
# separate quoted arguments
for ip_address in "$@"; do 
	echo "Pinging IP address ${ip_address}..."
	ping -c 5 ${ip_address}
done
