#!/bin/bash
<<in

user check 

in

read -p "username:" name

count=$(cat /etc/passwd | grep -i "$name" | wc | awk '{print $1}')

if [ $count == 0 ];
then 
	echo "no user avilable"
else
	echo "user avilable"
fi
