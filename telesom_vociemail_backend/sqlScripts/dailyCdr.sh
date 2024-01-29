#!/bin/bash

#base path
base_file_name=/var/log/asterisk/cdr-csv/Master*

cd /home/rbt/voicemail/sqlScripts/
rm -rf ivrCdrFileUploadInDb.csv
#/ Get the current date in YYYY-MM-DD format
current_date=$(date +"%Y-%m-%d %H:%M")
yesterday_date=$(date -d "-1 days" +"%Y-%m-%d")
#yesterday_date=$(date -d "yesterday" +"%Y-%m-%d")
echo "Report Generate date| Current date: $current_date"
echo "Data Make Date|Yesterday_date: $yesterday_date"

grep $yesterday_date $base_file_name >$yesterday_date.csv

sed -i 's/"//g' $yesterday_date.csv
chmod 755 $yesterday_date.csv
cp $yesterday_date.csv ivrCdrFileUploadInDb.csv
chmod 755 ivrCdrFileUploadInDb.csv
grep -v Read ivrCdrFileUploadInDb.csv >ivrCdrFileUploadInDb_withoutRead.csv
grep  Read ivrCdrFileUploadInDb.csv >ivrCdrFileUploadInDb_withRead.csv
chmod 755 ivrCdrFileUploadInDb_withoutRead.csv
chmod 755 ivrCdrFileUploadInDb_withRead.csv
mv $yesterday_date.csv cdr/
echo "Complete"
