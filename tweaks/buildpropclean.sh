#!/system/bin/sh
#Build.prop tweaks

mount -o rw,remount /system
sed "#Grpahics & performances tweaks" >> /system/build.prop
sed "debug.sf.hw = 1" >> /system/build.prop
sed "debug.composition.type = c2d" >> /system/build.prop
sed "debug.enabletr = true" >> /system/build.prop
sed "debug.qctwa.preservebuf = 1" >> /system/build.prop
sed "ro.sf.compbypass.enable=1" >> /system/build.prop
sed "video.accelerate.hw=1" >> /system/build.prop
sed "ro.media.enc.hprof.vid.fps=75" >> /system/build.prop
sed "debug.egl.hw=1" >> /system/build.prop
sed "persist.sys.use_16bpp_alpha=1" >> /system/build.prop
sed "debug.performance.tuning=1" >> /system/build.prop
sed "persist.sys.use_dithering=0" >> /system/build.prop
sed "persist.sys.ui.hw=1" >> /system/build.prop
sed "windowsmgr.max_events_per_sec=1000" >> /system/build.prop
sed "ro.max.fling_velocity=10000" >> /system/build.prop
sed "ro.min.fling_velocity=6000" >> /system/build.prop
sed "#Media quality improvements" >> /system/build.prop
sed "ro.media.enc.jpeg.quality=100" >> /system/build.prop
sed "ro.media.dec.jpeg.memcap=8000000" >> /system/build.prop
sed "ro.media.enc.hprof.vid.bps=8000000" >> /system/build.prop
sed "Battery tweaks" >> /system/build.prop
sed "pm.sleep_mode=1" >> /system/build.prop
sed "ro.ril.disable.power.collapse=0" >> /system/build.prop
sed "persist.sys.shutdown.mode=hibernate" >> /system/build.prop
sed "#Dalvik tweaks" >> /system/build.prop
sed "dalvik.vm.dexopt-data-only=1" >> /system/build.prop
sed "dalvik.vm.verify_bytecode=false" >> /system/build.prop
sed "dalvik.vm.jniopts=forcecopy" >> /system/build.prop
sed "dalvik.vm.dexopt-flags=m=v,o=y" >> /system/build.prop
sed "dalvik.vm.execution-mode=int:jit" >> /system/build.prop
sed "dalvik.gc.type=precise" >> /system/build.prop
sed "#Other Performance Tweaks" >> /system/build.prop
sed "persist.android.strictmode=0" >> /system/build.prop
sed "debug.gr.swapinterval=0" >> /system/build.prop
sed "persist.android.strictmode=0" >> /system/build.prop
sed "persist.sampling_profiler=0" >> /system/build.prop
sed "ENFORCE_PROCESS_LIMIT=false" >> /system/build.prop
sed "ro.min_pointer_dur=1" >> /system/build.prop
sed "ro.telephony.call_ring.delay=0" >> /system/build.prop
sed "ro.sec.proximity.delay=0" >> /system/build.prop
sed "persist.service.pcsync.enable=0" >> /system/build.prop
sed "persist.service.lgospd.enable=0" >> /system/build.prop
sed "ENFORCE_PROCESS_LIMIT=false" >> /system/build.prop
sed "MAX_SERVICE_INACTIVITY=false" >> /system/build.prop
sed "MIN_HIDDEN_APPS=false" >> /system/build.prop
sed "MAX_HIDDEN_APPS=false" >> /system/build.prop
sed "CONTENT_APP_IDLE_OFFSET=false" >> /system/build.prop
sed "EMPTY_APP_IDLE_OFFSET=false" >> /system/build.prop
sed "MAX_ACTIVITIES=false" >> /system/build.prop
sed "ACTIVITY_INACTIVE_RESET_TIME=false" >> /system/build.prop
sed "MAX_RECENT_TASKS=false" >> /system/build.prop
sed "MIN_RECENT_TASKS=false" >> /system/build.prop
sed "APP_SWITCH_DELAY_TIME=false" >> /system/build.prop
sed "MAX_PROCESSES=false" >> /system/build.prop
sed "PROC_START_TIMEOUT=false" >> /system/build.prop
sed "CPU_MIN_CHECK_DURATION=false" >> /system/build.prop
sed "GC_TIMEOUT=false" >> /system/build.prop
sed "SERVICE_TIMEOUT=false" >> /system/build.prop
sed "MIN_CRASH_INTERVAL=false" >> /system/build.prop
sed "ro.config.hw_power_saving=true" >> /system/build.prop
sed "ro.mot.eri.losalert.delay=100000" >> /system/build.prop
sed "persist.ril.uart.flowctrl=90" >> /system/build.prop 
done

