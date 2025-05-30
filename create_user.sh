
<<help

this is user creation

help

echo "=== creation of user ===="

read -p "enter the username:" username
read -p "enter the password:" password

sudo useradd -m -p "$username" "$password"
echo -e "$password\n$password" | sudo passwd "$username"


echo "==== creation of user end ===="


echo "=== delete user ==="

sudo userdel $username

echo "== deletion of user complete=="

if [ $(cat /etc/passwd | grep $username | wc |awk '{print $1}') == 0];
then
	echo " if wc zero user deleted "

else 
	echo "user not delated "

fi

