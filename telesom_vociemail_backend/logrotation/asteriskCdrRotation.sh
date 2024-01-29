#!/bin/bash
bashPath="logs"
cd /var/log/asterisk/cdr-csv/
backupPath="backup/"
now="$(date --date='1 days ago'  +'%Y-%m-%d')"
echo "************************** Date  $now"
fileName="Master"
backupFileName=$fileName"_"$now".csv"
echo "1111 $fileName"
echo "$backupFileName"
currFileName=$fileName".csv"
echo "$currFileName"
cp $currFileName $backupFileName
echo "" >$currFileName
appLogName="Master_"
now="$(date --date='3 days ago'  +'%Y-%m-%d')"
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
        orignalFileName=$appLogName$now.csv
        echo $orignalFileName
        tar -cvzf $orignalFileName.tgz $orignalFileName
        mv $orignalFileName.tgz $backupPath
#        rm $orignalFileName -rf
done

