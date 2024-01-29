DB_USER='vmail';
DB_PASSWD='Vmail@123';
DB_NAME='vmaildb';

pday=`date --date="yesterday " '+%d%b'`
path='/home/comm/crbt/sqlScript/reports'
fileName=VmailDailySummaryDetails_$pday.xls
data=("1" "2" "3")
#Add New date
for ((i=0;i<24;i++)); do
mysql --user=$DB_USER --password=$DB_PASSWD -P3306 -h172.16.53.20 $DB_NAME -e "insert VMAIL_SUMMARY_REPORT_HOURLY (REPORT_DATE,HOUR,SERVER) values (now()- INTERVAL 1 DAY,$i,209);"
done

#VM_TRAFFIC
for ((i=0;i<24;i++)); do
mysql --user=$DB_USER --password=$DB_PASSWD -P3306 -h172.16.53.20 $DB_NAME -e "update VMAIL_SUMMARY_REPORT_HOURLY set TRAFFIC=(select count(1) from VOICE_CDR_DETAILS_209 where (dst=166 or dst=2166) and date(start)= date(now()- INTERVAL 1 DAY) and lastdata!='voicemail/som/Low_balance' and duration>2 and hour(start)=$i) where date(REPORT_DATE) =date(now()- INTERVAL 1 DAY) and HOUR=$i and SERVER=209;"
done

#Revenue

for ((i=0;i<24;i++)); do
mysql --user=$DB_USER --password=$DB_PASSWD -P3306 -h172.16.53.20 $DB_NAME -e "update VMAIL_SUMMARY_REPORT_HOURLY set REVENUE=(select sum(duration)*.0006 from VOICE_CDR_DETAILS_209 where (dst=166 or dst=2166) and date(start)= date(now()- INTERVAL 1 DAY) and lastdata!='voicemail/som/Low_balance' and duration>2 and hour(start)=$i) where date(REPORT_DATE) =date(now()- INTERVAL 1 DAY) and HOUR=$i and SERVER=209;"
done

#Duration

for ((i=0;i<24;i++)); do
mysql --user=$DB_USER --password=$DB_PASSWD -P3306 -h172.16.53.20 $DB_NAME -e "update VMAIL_SUMMARY_REPORT_HOURLY set DURATION=(select sum(duration)  from VOICE_CDR_DETAILS_209 where (dst=166 or dst=2166) and date(start)= date(now()- INTERVAL 1 DAY) and lastdata!='voicemail/som/Low_balance' and duration>2 and hour(start)=$i),TAFFIC_DATE=date(now()- INTERVAL 1 DAY) where date(REPORT_DATE) =date(now()- INTERVAL 1 DAY) and HOUR=$i and SERVER=209;"
done


