#!/bin/bash
bashPath="logs"
cd /home/rbt/voicemail/logs/
backupPath="backup/"
previousDays=8
fileCount=0
appLogName="greenzone_vmail-"
now="$(date)"
echo "************************** Date  $now"
printf "Current date and time %s\n" "$now"
tmp="'$previousDays days ago'"
echo $tmp
now="$(date --date='19 days ago'  +'%m-%d-%Y')"
filename="$appLogName$now*"
echo $filename
command="ls "$filename" |wc -l"
echo "command = $command"
result=$(eval "$command")
echo "$(eval "pwd")"
echo "result=$result"
fileCount=`ls $filename |wc -l`
printf "Current date in dd/mm/yyyy format %s\n" "$now"
echo $filename
echo $fileCount
for((i=0;i<$fileCount;i++))
do
	p=1
	k=$(($i+$p))
	echo $k
	orignalFileName=$appLogName$now-$k.log
	echo $orignalFileName
	tar -cvzf $orignalFileName.tgz $orignalFileName
	mv $orignalFileName.tgz $backupPath	
        rm $orignalFileName -rf	
done

