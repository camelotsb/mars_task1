#!/bin/bash

#I've givn below the possible solutions I can come up with

#soln 1: generating a random password with only one line
#here ill set it up so that the length of the password can be manually generate.#But the password itslef is generated in only one line.   ;)

echo "The random password generated with one line (meathod 1) is:"
read -p "enter the length of pwd  :" l
echo $RANDOM | md5sum | head -c $[l]; echo;


#soln 2:  here i've used more than one line

echo
echo "The random password generated with many lines with spl characters (meathod 2 is:"

read -p "enter the length of pwd :" l

set_char=(0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z ! @ \# $ % ^ \&)


for ((i = 1; i <= $l ; i++))

do

let rand=${RANDOM}%42
password="${password}${set_char[$rand]}"
done
echo $password

#soln 3: here ive generated a 4 digit pin starting with 1

echo
echo "The 4 digit pin generatod with (meathod 3 ) is  :"
echo $(($RANDOM % 1000 +1000))

