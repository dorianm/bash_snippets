#!/bin/bash

# Force a script to be run as root

if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

echo "You're root"
