DB_USER='vmail';
DB_PASSWD='Vmail@123';
DB_NAME='vmaildb';

pday=`date --date="yesterday " '+%d%b'`
path='/home/comm/crbt/sqlScript/reports'
fileName=VmailDailySummaryDetails_$pday.xls
data=("1" "2" "3")
runningDate="2023-06-01"
start_date='2023-07-01'
end_date='2023-07-30'
#Add New date
while [[ $start_date <= $end_date ]]
do
	mysql --user=$DB_USER --password=$DB_PASSWD -P3306 -h172.16.53.20 $DB_NAME -e "insert VMAIL_SUMMARY_REPORT_DATE (REPORT_DATE,DATE,SERVER) values ('$start_date',$i,209);"
	start_date=$(date -d "$start_date + 1 day" +%Y-%m-%d)
done


