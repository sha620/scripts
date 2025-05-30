!#/bin/bash

<<info
this shell scrip to take regular backup

info

src=$1
dest=$2

timestamp=$(date '+%y-%m-%d-%H-%M')
zip -r "$dest/backup-$timestamp.zip" $src   >deb/null/

aws s3 sync "$dest"/ s3://tws-backup1

echo "backup done and uploaded to s3"
