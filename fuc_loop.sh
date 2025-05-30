!#/bin/bash

<<info

crate user

info

function user {

read -p "my name:" name
echo "my name is $name"

}

for ((i=10 ; i>=1 ; i--))
do
	user
done
