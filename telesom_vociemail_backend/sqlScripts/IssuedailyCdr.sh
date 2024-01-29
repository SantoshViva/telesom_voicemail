#!/bin/bash

#base path
base_file_name=/var/log/asterisk/cdr-csv/Master.csv

cd /home/rbt/voicemail/sqlScripts/
rm -rf ivrCdrFileIssueUploadInDb.csv
#/ Get the current date in YYYY-MM-DD format
current_date=$(date +"%Y-%m-%d %H:%M")
yesterday_date=$(date -d "-1 days" +"%Y-%m-%d")
#yesterday_date=$(date -d "yesterday" +"%Y-%m-%d")
echo "Report Generate date| Current date: $current_date"
echo "Data Make Date|Yesterday_date: $yesterday_date"

grep $yesterday_date $base_file_name >$yesterday_date.csv1

sed -i 's/"//g' $yesterday_date.csv1
chmod 755 $yesterday_date.csv1
cp $yesterday_date.csv1 ivrCdrFileIssueUploadInDb.csv
chmod 755 ivrCdrFileIssueUploadInDb.csv
grep -v "Read\|Record" ivrCdrFileIssueUploadInDb.csv >ivrCdrFileIssueUploadInDb_withoutRead.csv
grep  "Read\|Record" ivrCdrFileIssueUploadInDb.csv >ivrCdrFileIssueUploadInDb_withRead.csv
chmod 755 ivrCdrFileIssueUploadInDb_withoutRead.csv
chmod 755 ivrCdrFileIssueUploadInDb_withRead.csv
mv $yesterday_date.csv1 cdr/
echo "Complete"
