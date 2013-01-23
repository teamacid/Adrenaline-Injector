#!/system/bin/sh
#Created by Team Acid
#Internal2External script


E=echo "$(grep 'vold' /proc/mounts | grep sdcard | cut -d' ' -f1)" 

mount -t vfat -o umask=0000 $E /storage/sdcard0

mount -o bind /data/media /storage/sdcard1  
