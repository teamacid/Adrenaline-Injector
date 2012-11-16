#!/bin/sh
#Universal Journal Disabling script by Team Acid

Vas=$(find /dev/block -name system)
Vad=$(find /dev/block -name data)
Vac=$(find /dev/block -name cache)

mkdir /sdcard/tmp
cp /data/tune2fs /tmp
cp /data/journaldisable /sdcard/tmp
/sbin/busybox mount -o remount,rw rootfs /
/tmp/busybox mount -o remount,ro rootfs /
echo ***************Begin System Partition***************
/sbin/busybox umount $Vas
/tmp/tune2fs -O ^has_journal $Vas
fsck.ext4 -Dfy $Vas
/sbin/busybox mount -t ext4 -o nosuid,nodev,noatime,nodiratime,barrier=0,nobh ,data=writeback,noauto_da_alloc $Vas /system
echo ***************System Partition Done***************
# Cache partition
echo ***************Begin Cache Partition***************
/sbin/busybox umount $Vac
/tmp/tune2fs -O ^has_journal $Vac
fsck.ext4 -Dfy $Vac
/sbin/busybox mount -t ext4 -o nosuid,nodev,noatime,nodiratime,barrier=0,nobh,data=writeback,noauto_da_alloc $Vac /cache
echo ***************Cache Partition Done***************
# Data partition
echo ***************Begin Data Partion***************
/sbin/busybox umount $Vad
/tmp/tune2fs -O ^has_journal $Vad
fsck.ext4 -Dfy $Vad
/sbin/busybox mount -t ext4 -o nosuid,nodev,noatime,nodiratime,barrier=0,nobh,data=writeback,noauto_da_alloc $Vad /data
sync
echo ***************Data Partion Done***************
echo ***************Finished No Journaling Partions***************
