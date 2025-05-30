#!/bin/bash

<<info

install the package that pass in thr arugments

info


echo "installing $1"
sudo apt-get update >dev/null
sudo apt-get upgrade > /dev/null
sudo apt-get install $1 -y > /dev/null

echo "installation completed"
