#!/bin/sh
#Multi-Core tweak by Team Acid

if (find /sys/devices/system/cpu/ -name cpu1); then

echo "echo 1 > /sys/devices/system/cpu/cpu1/online" >> /system/etc/init.qcom.post.boot.sh

echo "chmod 444 /sys/devices/system/cpu/cpu1/online" >> /system/etc/init.qcom.post.boot.sh

echo "if [ -e /system/bin/powersave ]; then     	
     	/system/bin/powersave" >> /system/etc/init.qcom.post.boot.sh


