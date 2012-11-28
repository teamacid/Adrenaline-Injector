#!/system/bin/sh
#Build.prop tweaks

mount -o rw,remount /system
echo "#Grpahics & performances tweaks" >> /system/build.prop
echo "debug.sf.hw = 1" >> /system/build.prop
echo "debug.composition.type = c2d" >> /system/build.prop
echo "debug.enabletr = true" >> /system/build.prop
echo "debug.qctwa.preservebuf = 1" >> /system/build.prop
echo "ro.sf.compbypass.enable=1" >> /system/build.prop
echo "video.accelerate.hw=1" >> /system/build.prop
echo "ro.media.enc.hprof.vid.fps=75" >> /system/build.prop
echo "debug.egl.hw=1" >> /system/build.prop
echo "persist.sys.use_16bpp_alpha=1" >> /system/build.prop
echo "debug.performance.tuning=1" >> /system/build.prop
echo "persist.sys.use_dithering=0" >> /system/build.prop
echo "persist.sys.ui.hw=1" >> /system/build.prop
echo "windowsmgr.max_events_per_sec=1000" >> /system/build.prop
echo "ro.max.fling_velocity=10000" >> /system/build.prop
echo "ro.min.fling_velocity=6000" >> /system/build.prop
echo "#Media quality improvements" >> /system/build.prop
echo "ro.media.enc.jpeg.quality=100" >> /system/build.prop
echo "ro.media.dec.jpeg.memcap=8000000" >> /system/build.prop
echo "ro.media.enc.hprof.vid.bps=8000000" >> /system/build.prop
echo "Battery tweaks" >> /system/build.prop
echo "pm.sleep_mode=1" >> /system/build.prop
echo "ro.ril.disable.power.collapse=0" >> /system/build.prop
echo "persist.sys.shutdown.mode=hibernate" >> /system/build.prop
echo "#Dalvik tweaks" >> /system/build.prop
echo "dalvik.vm.dexopt-data-only=1" >> /system/build.prop
echo "dalvik.vm.verify_bytecode=false" >> /system/build.prop
echo "dalvik.vm.jniopts=forcecopy" >> /system/build.prop
echo "dalvik.vm.dexopt-flags=m=v,o=y" >> /system/build.prop
echo "dalvik.vm.execution-mode=int:jit" >> /system/build.prop
echo "dalvik.gc.type=precise" >> /system/build.prop
echo "#Other Performance Tweaks" >> /system/build.prop
echo "persist.android.strictmode=0" >> /system/build.prop
echo "debug.gr.swapinterval=0" >> /system/build.prop
echo "persist.android.strictmode=0" >> /system/build.prop
echo "persist.sampling_profiler=0" >> /system/build.prop
echo "ENFORCE_PROCESS_LIMIT=false" >> /system/build.prop
echo "ro.min_pointer_dur=1" >> /system/build.prop
echo "ro.telephony.call_ring.delay=0" >> /system/build.prop
echo "ro.sec.proximity.delay=0" >> /system/build.prop
echo "persist.service.pcsync.enable=0" >> /system/build.prop
echo "persist.service.lgospd.enable=0" >> /system/build.prop
echo "ENFORCE_PROCESS_LIMIT=false" >> /system/build.prop
echo "MAX_SERVICE_INACTIVITY=false" >> /system/build.prop
echo "MIN_HIDDEN_APPS=false" >> /system/build.prop
echo "MAX_HIDDEN_APPS=false" >> /system/build.prop
echo "CONTENT_APP_IDLE_OFFSET=false" >> /system/build.prop
echo "EMPTY_APP_IDLE_OFFSET=false" >> /system/build.prop
echo "MAX_ACTIVITIES=false" >> /system/build.prop
echo "ACTIVITY_INACTIVE_RESET_TIME=false" >> /system/build.prop
echo "MAX_RECENT_TASKS=false" >> /system/build.prop
echo "MIN_RECENT_TASKS=false" >> /system/build.prop
echo "APP_SWITCH_DELAY_TIME=false" >> /system/build.prop
echo "MAX_PROCESSES=false" >> /system/build.prop
echo "PROC_START_TIMEOUT=false" >> /system/build.prop
echo "CPU_MIN_CHECK_DURATION=false" >> /system/build.prop
echo "GC_TIMEOUT=false" >> /system/build.prop
echo "SERVICE_TIMEOUT=false" >> /system/build.prop
echo "MIN_CRASH_INTERVAL=false" >> /system/build.prop
echo "ro.config.hw_power_saving=true" >> /system/build.prop
echo "ro.mot.eri.losalert.delay=100000" >> /system/build.prop
echo "persist.ril.uart.flowctrl=90" >> /system/build.prop 
mv /system/lib/egl/libGLES_android.so /system/lib/egl/libGLES_android.so.bak
done

