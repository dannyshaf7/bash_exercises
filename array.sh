#!/usr/bin/env bash

# script sets an array
IP_ADDRESSES=(192.168.1.1 192.168.1.2 192.168.1.3)

# prints all array elements
echo "${IP_ADDRESSES[*]}"

# prints element at position 1
echo "${IP_ADDRESSES[0]}"
