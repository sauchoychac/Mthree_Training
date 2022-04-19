#!/bin/bash

file1=activity13-1.txt
file2=activity13-2.txt

echo "Only in file1:"
echo $(comm -23 <(sort $file1) <(sort $file2))

echo "Only in file2:"
echo $(comm -13 <(sort $file1) <(sort $file2))



exit 0
