#!/bin/bash


<<info

user creation


info

echo "===user creation==="

read -p "enter name:" user
read -p "enter password" password
sudo useradd -m -p "$user" "$password"

echo -e "$password\n$password" | sudo passwd "$user"

echo "===user created===="


echo "==== delete user ======"

sudo userdel "$user"

echo "=== user deleted ====="

echo "user check"

if [ $(cat /etc/passwd | grep -i $user | wc | awk '{print $1}') == 0 ];

then
       echo "user not avilable"
else
	echo "user avilable"

fi
