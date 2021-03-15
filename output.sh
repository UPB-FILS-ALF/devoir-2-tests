#!/bin/bash

for folder in tests/*
do
    rm "$folder"/*.out
    for file in "$folder"/*.asm 
    do
        echo $file
        node ../index.js "$file" > "$folder"/$(basename $file .asm).out 1024
    done
done