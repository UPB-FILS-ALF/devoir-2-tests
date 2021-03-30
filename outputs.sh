#!/bin/bash

for folder in tests/*
do
    rm -rf "$folder"/*.out
    rm -rf "$folder"/*.svg
    for file in "$folder"/*.dsn 
    do
        echo $file
        node ../index.js "$file" "$folder"/$(basename $file .dsn).svg > "$folder"/$(basename $file .dsn).out
    done
done