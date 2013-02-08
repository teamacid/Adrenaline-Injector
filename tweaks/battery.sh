#!/system/bin/sh
#Tweaks that work

#Block and Scheduler
LOOP=`ls -d /sys/block/loop*`;
MMC=`ls -d /sys/block/mmc*`;


for j in $MMC; do
	echo "0" > $j/queue/rotational;
	echo "4096" > $j/queue/read_ahead_kb;
	echo "0" > $j/queue/iostats;
	echo "1" > $j/queue/iosched/group_isolation;
	echo "4" > $j/queue/iosched/quantum;
	echo "1" > $j/queue/iosched/low_latency;
	echo "5" > $j/queue/iosched/slice_idle;
	echo "1" > $j/queue/iosched/back_seek_penalty;
	echo "1000000000" > $j/queue/iosched/back_seek_max;
done;
for i in /sys/block/*/queue/scheduler ; do
echo "sio" > $i;
done;

if (cat /sys/block/*/queue/scheduler != sio); then
for i in /sys/block/*/queue/scheduler ; do
echo "deadline" > $i;
done;

for a in $MMC ; do
	echo "512" > $a/queue/nr_requests;
done;

#Kernel
echo "NO_NORMALIZED_SLEEPER" > /sys/kernel/debug/sched_features
echo "NO_NEXT_BUDDY" > /sys/kernel/debug/sched_features
echo "NO_NEW_FAIR_SLEEPERS" > /sys/kernel/debug/sched_features;
echo "8" > /proc/sys/vm/page-cluster;
echo "48000" > /proc/sys/kernel/msgmni;
echo "82000" > /proc/sys/kernel/msgmax;
echo "10" > /proc/sys/fs/lease-break-time;
echo "500,512000,64,2048" > /proc/sys/kernel/sem;
echo "375000" > /proc/sys/kernel/sched_latency_ns;
echo "175000" > /proc/sys/kernel/sched_min_granularity_ns;
echo "125000" > /proc/sys/kernel/sched_wakeup_granualarity_ns;



#Clean up
rm -f /data/dalvik-cache/*.apk
rm -f /data/dalvik-cache/*.tmp

#Battery and Ram
echo "0" > /proc/sys/vm/swappiness;
echo "500" > /proc/sys/vm/dirty_expire_centisecs;
echo "1000" > /proc/sys/vm/dirty_writeback_centisecs;
echo "3" > /proc/sys/vm/dirty_background_ratio;
echo "10" > /proc/sys/vm/dirty_ratio;
echo "85" > /proc/sys/vm/vfs_cache_pressure;
echo "4096" > /proc/sys/vm/min_free_kbytes;
echo 3 > /proc/sys/vm/drop_caches;