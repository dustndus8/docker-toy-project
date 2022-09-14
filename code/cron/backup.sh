#!/bin/bash
  
# pull github index file

backupdate=$(date +%y%m%d%H%M)
git clone https://github.com/dustndus8/gitupdate.git /home/rapa/main/backup/$backupdate

cp /home/rapa/main/backup/$backupdate/index.html /home/rapa/main/index.html

# delete 3 days over file
find /home/rapa/main/backup/ -mtime +3 -delete