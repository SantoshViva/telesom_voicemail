#!/bin/bash

# Source server details
source_user="santosh"
source_host="172.16.53.115"
source_file="/home/rbt/voicemail/sqlScripts/2023-05-19"

# Destination server details
dest_user="root"
dest_host="172.17.101.13"
dest_directory="/home/santosh"

# Password for SSH authentication (replace with the actual password)
password="h2o2#38nWhQ3M+On"

sftp_command="put $source_file $dest_directory"

sftp -oBatchMode=yes -b <(echo "$sftp_command") $source_user@$source_host:$dest_user@$dest_host
# Transfer file using sshpass and scp
#sshpass -p "$password" scp "${source_user}@${source_host}:${source_file}" "${dest_user}@${dest_host}:${dest_directory}"

# Transfer file using scp
#scp "${source_user}@${source_host}:${source_file}" "${dest_user}@${dest_host}:${dest_directory}"
