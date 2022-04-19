#!/bin/bash

file1=$1
file2=$2

# Command Substitution to Test for Non-Empty Strings
if [[ $(comm -12 <(sort $file1) <(sort $file2)) ]]; then
    echo "There is a common element shared in both files"
else
    echo "No common element found between both files"
fi

exit 0
