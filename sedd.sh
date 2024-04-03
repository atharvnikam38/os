#!/bin/bash

if [ "$#" -ne 1 ]; then
        echo "Usage: $0 <file>"
        exit 1
fi

file="$1"

sed 's/^[[:space:]]*//' "$file" | sed '/^$/d' | sort | uniq -d

