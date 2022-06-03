#!/bin/bash

echo "The truth table for (A^B)v(C^D) is displayed below :"
echo
echo 'A  B  C  D  | (A^B)v(C^D) '

for i in 0 1
do 
	for j in 0 1
	do
		for k in 0 1
		do
			for l in 0 1
			do
				x=$(($i&&$j))
				y=$(($k&&$l))
				z=$(($x||$y))
				echo $i'  '$j'  '$k'  '$l'  |  '$z
			done
		done
	done
done
