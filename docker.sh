#!/bin/bash

<<info

pavakge

info





function usercreate {
read -p "user name is :" user
read -p "passwdord is :" password



sudo useradd -m -p "$user" "$password"
echo -e "$password\n$password" | sudo passwd "$user"

}

function delete {

sudo userdel $user

}

function user_check {

cat /etc/passwd | grep -i "$user" | wc | awk '{print $1}'


count=$(cat /etc/passwd | grep -i "$user" | wc | awk '{print $1}')
if [ $count == 0 ];
then
	echo " userNA "
else
	echo " userA "

fi

}
for ((i=1 ; i<=2 ; i++))
do
	usercreate
	delete
	user_check

done
