#!/bin/sh

# Find duplicates by checksum
alias sum="md5sum"
sum $(find -type f) >sums.txt
for hash in $(sum $(find -type f) | awk '{print $1}' | sort | uniq -d)
do grep "$hash" <sums.txt | grep -v '\.git'
done
