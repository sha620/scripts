#!/bin/bash

<< info


jjkkk


info




function user_create {

#read -p "user name: " user
#read -p "user pass: " pass

sudo useradd -m -p "$1" "$2"
echo -e "$2\n$2" | sudo passwd "$1"

}





function user_del {  

sudo userdel "$1"

}


function user_list {

count=$(cat /etc/passwd | grep -i "$1" | wc | awk '{print $1}')

if [ $count == 0 ];
then
	echo "na"
else
	echo "a"


fi

}

for ((i=1 ; i<=2 ;i++))
do
	user_create
	user_del
	user_list
done
