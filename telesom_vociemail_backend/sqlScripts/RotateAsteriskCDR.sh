#!/bin/sh
# cdrrotate.sh
#
# This cdrrotate script is used to rotate Asterisk Master.csv file. 
# It should be triggered by cron of the user runs Asterisk.
#
# When this file is run, the current Master.csv file is renamed.
# The new file name is Master-YYYYMMDDHHMMSS.csv.
# Where YYYYMMDDHHMMSS stands for the year, month, day, hour, minute and second
# when the CDR file was renamed. When the Master.csv file is renamed, a new empty
# Master.csv file is automatically generated.
#
# This script should be run by user runs Asterisk.
#
NEW_CDR_FILE_NAME=Master-`date +%Y%m%d%H%M%S`.csv
if [ ! "$Asterisk_HOME" ]
then
echo “The Asterisk_HOME variable is not set."
exit 1
fi
cd $Asterisk_HOME/var/log/asterisk/cdr-csv
mv Master.csv $NEW_CDR_FILE_NAME
touch Master.csv
