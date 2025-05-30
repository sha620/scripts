#!/bin/bash

<<info 

funcion name

info
function create_user {

read -p "usename:" username
sudo useradd -m $username


echo "user created"

}

for (( k=1 ; k<=3 ; k++ ))
do
	create_user

done
