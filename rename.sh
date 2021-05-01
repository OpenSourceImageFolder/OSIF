#!/bin/bash
n=0
for i in *.jpg *.jpeg *.png *.gif *.JPG *.JPEG *.PNG *.GIF
do
    ext="$(echo "$i" | sed 's/.*\.//g')"
    num_str="$(printf "%03d" $n)"
    mv "$i" "g${num_str}.${ext}"
    echo mv "$i" "g${num_str}.${ext}"
    n="$(expr 1 + $n)"
done
