#!/sbin/sh

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

mount -t auto /system

echo "<b>Checking for /sdcard/custom_backup/custom_backup_list.txt</b>"
if [ ! -f $BAKDIR/custom_backup_list.txt ]; then
    echo "<b>BACKUP FILE NOT FOUND</b>"
    echo "<b>Do not know what to restore!</b>"
    exit 5
else
    echo "<b>Found the backup file...Proceeding</b>"
    echo "<b>Restoring from custom list...</b>"
    echo " "
    while read line; do
      echo "Restoring /system/$line"
      cp -p $BAKDIR/$line /system/$line
      done < $BAKDIR/custom_backup_list.txt

    echo "<u>AesSedai Restore Finished</u>"
    exit 10
fi


