#!/bin/sh
#Universal Journal Disabling script by Team Acid

Vas=$(find /dev/block -name system)
Vad=$(find /dev/block -name data)
Vac=$(find /dev/block -name cache)
Vadu=$(find /dev/block -name userdata)

cp /data/tune2fs /tmp

chmod 777 /tmp/tune2fs


umount -f $Vas

umount -f $Vad

umount -f $Vadu

umount -f -l $Vac

umount -f /cache


e2fsck -p -f $Vas 

tune2fs -O ^has_journal $Vas 

e2fsck -p -f $Vadu 

fsck -p -f $Vadu 

tune2fs -O ^has_journal $Vadu

e2fsck -p -f $Vad 

fsck -p -f $Vad

tune2fs -O ^has_journal $Vad

e2fsck -p -f $Vac 

tune2fs -O ^has_journal $Vac 



