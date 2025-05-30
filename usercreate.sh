#!/bin/bash
<<in

user create

in

echo "==== user creation ===="

#./usercreate.sh laadu peda

sudo useradd -m -p "$1" "$2"

echo -e "$2\n$2" | sudo passwd "$1"

echo "=== user end ===="


echo "==== delete user ====="
sudo userdel "$1"
echo "==== deleted"

echo "==usercheck==="

cat /etc/passwd | grep -i "$1" | wc | awk '{print $1}'

count=$(cat /etc/passwd | grep -i "$1" | wc | awk '{print $1}')

if [ $count == 0 ];

then
	echo "no user"
else
	echo "useravilable"

fi
