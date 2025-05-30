<<info


hh

info

function user_check {
read -p "user name is" user

if [ $(cat /etc/passwd | grep -i "$user" | wc | awk '{print $1}') == 0 ];
then
	echo "iam"
else
	echo "am"

fi

}

function pacakge_install {

sudo apt-get update >/dev/null
sudo apt-get upgrade
sudo apt-get install $1 -y
systemctl status $1

}

user_check
pacakge_install


