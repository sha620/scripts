#! /bin/bash


<<info

all check 

info

function user_create {

read -p "user name: " user
read -p "pass: " pass

sudo useradd -m -p "$user" "$pass"

echo -e "$pass\n$pass" | sudo passwd "$user"


}

function user_delete {

sudo userdel "$user"

}

function user_check {

count=$(cat /etc/passwd | grep -i "$user" | wc | awk '{print $1}')
if [ $count == 0 ];

then 
	echo "user NA"
else
	echo "user A"

fi

}

for ((i=1 ; i<=2 ; i++))

do
	user_create
	user_delete
	user_check
done
