#!/usr/bin/env bash
IP_ADDRESS="${1}"

# case statement allows for matching multiple conditions
# alternative to if/else, can be more efficient
# * wildcard will match anything that starts with 
# the value preceding it, no matter what follows
case ${IP_ADDRESS} in
	192.168.*)
		echo "Network is 192.168.x.x"
	;;
	10.0.*)
		echo "Network is 10.0.x.x"
	;;
	*)
		echo "Could not identify network"
	;;
esac
