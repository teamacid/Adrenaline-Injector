#!/sbin/sh
#
# mrRobinson hacked support of CM9 custom_backup_list.txt plus
#
BAKDIR=/sdcard/custom_backup

if [ ! -d /sdcard ]; then
echo "<b>Mounting /sdcard</b>"
mount -t auto /sdcard
echo " "
fi

if [ ! -d /system ]; then
echo "<b>Mounting /system</b>"
mount -t auto /system
echo " "
fi

echo "<b>Checking for /sdcard/custom_backup/custom_backup_list.txt</b>"
if [ ! -f /sdcard/custom_backup/custom_backup_list.txt ]; then
    echo "<b>BACKUP FILE NOT FOUND on sdcard!</b>"
    exit 5
else
    echo "<b>Found the backup file...Proceeding</b>"
    echo " "
    echo "<b>Backing up from file...</b>"
    echo " "
  while read line; do
      mkdir -p $BAKDIR/$(dirname $line)
      echo "Backing up /system/$line to $BAKDIR/$line"
      cp -p /system/$line $BAKDIR/$line
  done < $BAKDIR/custom_backup_list.txt
  echo "<u>AesSedai Backup Finished</u>"
fi

#-- Exit Code
exit 10
