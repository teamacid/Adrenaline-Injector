#!/bin/sh
#Universal Journal Disabling script by Team Acid

Vas=$(find /dev/block -name system)
Vad=$(find /dev/block -name data)
Vac=$(find /dev/block -name cache)

mkdir /sdcard/tmp
cp /data/tune2fs /sdcard/tmp
cp /data/journaldisable /sdcard/tmp
/sbin/busybox mount -o remount,rw rootfs /
/tmp/busybox mount -o remount,ro rootfs /
echo ***************Begin System Partition***************
/sbin/busybox umount -l /system
/sdcard/tmp/tune2fs -O ^has_journal -c 1 -i 1d -m 0 $Vas
fsck.ext4 -Dfy $Vas
/sbin/busybox mount -t ext4 -o nosuid,nodev,noatime,nodiratime,barrier=0,nobh ,data=writeback,noauto_da_alloc $Vas /system
echo ***************System Partition Done***************
# Cache partition
echo ***************Begin Cache Partition***************
/sbin/busybox umount -l /cache
/sdcard/tmp/tune2fs -O ^has_journal -c 1 -i 1d -m 0 $Vac
fsck.ext4 -Dfy $Vac
/sbin/busybox mount -t ext4 -o nosuid,nodev,noatime,nodiratime,barrier=0,nobh,data=writeback,noauto_da_alloc $Vac /cache
echo ***************Cache Partition Done***************
# Data partition
echo ***************Begin Data Partion***************
/sbin/busybox umount -l /data
/sdcard/tmp/tune2fs -O ^has_journal -c 1 -i 1d -m 0 $Vad
fsck.ext4 -Dfy $Vad
/sbin/busybox mount -t ext4 -o nosuid,nodev,noatime,nodiratime,barrier=0,nobh,data=writeback,noauto_da_alloc $Vad /data
sync
echo ***************Data Partion Done***************
echo ***************Finished No Journaling Partions***************
