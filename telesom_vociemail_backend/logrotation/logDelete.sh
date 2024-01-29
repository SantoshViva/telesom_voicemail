#!/bin/bash
bashPath="logs"
cd /home/rbt/voicemail/logs/backup/
fileCount=0
appLogName="greenzone_vmail-"
now="$(date)"
echo "************************** Date  $now"
printf "Current date and time %s\n" "$now"
now="$(date --date='91 days ago'  +'%m-%d-%Y')"
filename="$appLogName$now*"
echo $filename
echo "***********************************************"
command="ls "$filename" |wc -l"
echo "command = $command"
result=$(eval "$command")

echo "$(eval "pwd")"
echo "result=$result"
compare=0

if [ $result == $compare ]
then
	echo "No old file"
	exit
else
	echo "else"
fi

fileCount=`ls $filename |wc -l`
echo $filename
echo $fileCount
for((i=0;i<$fileCount;i++))
do
	p=1
	k=$(($i+$p))
	echo $k
	orignalFileName=$appLogName$now-$k.log.tgz
	echo $orignalFileName
        rm $orignalFileName -rf	
done
