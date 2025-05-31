!#/bin/bash

<< hhhh

uu

hhhh

time=$(date '+%y-%m-%d-%H-%M-%S')

zip -r $2/$time- $1

aws s3 sync "$2"/ s3://tws-backup6
