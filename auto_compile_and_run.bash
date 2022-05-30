#!/bin/bash

cd ./programs

echo "The programs avialable"

ls 

read -p " enter the program to compile and run " file

gcc "$file" -o "$file.out"

gnome-terminal -- bash -c " "./$file.out"; bash"

echo "done"
