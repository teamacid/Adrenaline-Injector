#!/system/bin/sh
#Created by Team Acid
#Internal2External script


mount -o remount,rw /

mount -t vfat -o umask=0000 /dev/block/vold/179:97 /storage/sdcard0

mount -t exfat -o umask=0000 /dev/block/vold/179:97 /storage/sdcard0

if busybox mount | busybox grep vold/179:97; then
busybox mount -o bind /data/media /storage/sdcard1  
fi