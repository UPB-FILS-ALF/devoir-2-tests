#!/bin/bash

for folder in tests/*
do
    for file in "$folder"/*.asm 
    do
        echo $file
        node ../index.js "$file" > "$folder"/$(basename $file .asm).out
    done
done