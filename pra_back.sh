!#
<<info

backuo pratice

info

$1=sour
$2=dest
time=$(date '+%y-%m-%d-%H-%M-%S')

zip -r "$2/backup-$time.zip" $1

aws s3 sync "$2"/ s3://tws-backup2


