#!/bin/bash

#
# Script used to read in live a file and to search a pattern in new lines
# If the pattern is found, just write to stdout
#
# Take two arguments : 
# - The filename
# - The string searched
#
# Use Ctrl+C to stop this script
#

LOG_FILE=$1
SEARCHED=$2

tail -n 0 -f "$LOG_FILE" | while IFS= read -r line; do
    if [ $(echo "${line}" | grep "${SEARCHED}") ] ; then
        echo "String find in : $line"
    fi
done
