#!/bin/sh
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
REMOTE_USER=your-login-user
REMOTE_PORT=22

# path to private key
KEY=/home/??/

# path to backup to files to
LOCAL_PATH=/home/backup/backuptest

# path to pull the files from
REMOTE_PATH=/home/backup/backuptest

#----------------------------------------
echo "Copying files from $REMOTE_HOST to backup server ........"

/usr/bin/rsync -rsh -e "ssh -i $KEY" $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH $LOCAL_PATH

echo "Done"
 
