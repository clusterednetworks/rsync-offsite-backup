#!/bin/sh
#                                                                              #
#  Copyright (C) 2021 Ron Billings                                         #
#  info@clusterednetworks.com                                                        #
#                                                                              #
#  This program is free software; you can redistribute it and/or modify        #
#  it under the terms of the GNU General Public License as published by        #
#  the Free Software Foundation; either version 2 of the License, or           #
#  (at your option) any later version.                                         #
#                                                                              #
#  This program is distributed in the hope that it will be useful,             #
#  but WITHOUT ANY WARRANTY; without even the implied warranty of              #
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               #
#  GNU General Public License for more details.                                #
# 
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
