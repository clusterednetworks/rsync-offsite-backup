# rsync-offsite-backup
Shell Script to Backup Websites and Databases from your VPS (Digital Ocean, Linode, AWS, Vultr).
Be sure to edit the configuration options at the beginning of the script to match your environment prior to executing.
# Usage:

1. Pull up a terminal or SSH into the target server.

2. Logon as root

<pre>sudo -i</pre>

3. Download the script(s).

<pre>wget https://raw.githubusercontent.com/clusterednetworks/rsync-offsite-backup/master/rsync.server.ssh.key.sh</pre>

<pre>wget https://raw.githubusercontent.com/clusterednetworks/rsync-offsite-backup/master/rsync.server.ssh.password.sh</pre>

4. Edit the configuration options at the beginning of the script to match your environment prior to executing.
<pre>
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
</pre>

5. Make the script executable

<pre>chmod +x rsync.server.ssh.key.sh</pre>

6. Run the script.

<pre>./rsync.server.ssh.key.sh</pre>

8. Setup a cronjob to run the script daily/weekly if you choose.
<pre>
5 1   * * * /etc/rsync.server.ssh.key.sh >/dev/null 2>&1
</pre>
