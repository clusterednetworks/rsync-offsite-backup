#!/bin/sh
#----------------------------------------
# OPTIONS
#----------------------------------------
# connection info
REMOTE_HOST=yourserver.yourdomain.com
REMOTE_USER=username
REMOTE_PASSWORD=user1234
REMOTE_PORT=22

# local path to download the files to
LOCAL_PATH=/home/backup/backuptest

# remote path to get the files from
REMOTE_PATH=/home/backup/serverbackup
#----------------------------------------

echo "Copying files from $REMOTE_HOST to Backup Server ........"

sshpass -p $REMOTE_PASSWORD /usr/bin/rsync -rsh -e ssh $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH $LOCAL_PATH

echo "Done"
