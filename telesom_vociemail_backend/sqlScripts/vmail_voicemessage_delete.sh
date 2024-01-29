DB_USER='vmail';
DB_PASSWD='Vmail@123';
DB_NAME='vmaildb';

#Delete voice messages
mysql --user=$DB_USER --password=$DB_PASSWD -P3306 -h172.16.53.20 $DB_NAME -e "delete from  VMAIL_MESSAGE_DETAILS where  month(send_date)=month((now()- INTERVAL 240 DAY));"



