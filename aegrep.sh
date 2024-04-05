#!/bin/bash

# Script to display files matching specific patterns in the current directory

# Define the pattern
pattern="pattern1|pattern2"

# Use egrep to list files matching the pattern
egrep "$pattern" <<< "$(ls)"
