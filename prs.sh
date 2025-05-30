#!/bin/bash

<<info

backup

info


time=$(date '+%y-%m-%d-%H-%M-%S')

zip -r $2/backup-$time $2

aws s3 sync "$2"/ s3://tws-backup4
