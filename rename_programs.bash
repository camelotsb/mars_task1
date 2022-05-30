#!/bin/bash

cd ./programs

for file in *.py
do
	mv "$file" "${file%.py}.c"
done

echo "done"
