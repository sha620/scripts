#!/bin/bash


#user define variable 

hero="raju"
villian="virus"

echo " 3 iditos hero $hero"
echo "3 idiot villian $villian"

#Shell /enviorment variable or predefine variable

echo "current logged in user $USER"

#userinput

read -p "rancho ka name" fullname
echo "racho $fullname"

#arguments

#./latest.sh raju nandi king

echo "hro ka naam $0"
echo "last name $1"
echo "kya hua $2"
echo "khon hai $3"
echo "total $#"
echo "comibation are $@"


