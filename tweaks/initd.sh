#!/bin/sh
#Remove junk from init.d

mount -o remount,rw /system

rm /system/etc/init.d/*

mount -o remount,ro /system 