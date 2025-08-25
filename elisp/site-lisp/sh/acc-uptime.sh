#!/bin/bash

filename="uptime"
file1="/root/.emacs.d/archive/${filename}"

if [ ! -r "$file1" ]; then
    echo "Error: The file $file1 does not exist or is not readable."
    exit 1
fi

head -n 1 "$file1"
