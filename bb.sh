#!/bin/bash
<<info

nn

info

time=$(date '+%y-%m-%d-%H-%M-%S')
zip -r /home/ubuntu/new1/$time /home/ubuntu/newfile

aws s3 sync new1/ s3://tws-backup4
