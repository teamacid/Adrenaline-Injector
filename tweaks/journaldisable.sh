#!/bin/sh
#Universal Journal Disabling script by Team Acid

Vas=$(find /dev/block -name system)
Vad=$(find /dev/block -name data)
Vac=$(find /dev/block -name cache)

cp /data/tune2fs /tmp

chmod 777 /tmp/tune2fs

umount $Vas

umount $Vad

umount $Vac


/tmp/tune2fs -o journal_data_writeback $Vas

/tmp/tune2fs -o journal_data_writeback $Vad

/tmp/tune2fs -o journal_data_writeback $Vac

mount -o remount,noatime,nodiratime,nobh,noauto_da_alloc,barrier=0 $Vas /system

mount -o remount,noatime,nodiratime,nobh,noauto_da_alloc,barrier=0 $Vad /data

mount -o remount,noatime,nodiratime,nobh,noauto_da_alloc,barrier=0 $Vac /cache


