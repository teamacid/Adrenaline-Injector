#!/system/bin/sh
#Build.prop tweaks

mount -o rw,remount /system
echo "#Grpahics & performances tweaks" >> /system/build.prop
echo "debug.composition.type=cpu" >> /system/build.prop
echo "debug.composition.type=gpu" >> /system/build.prop
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
echo "windowsmgr.max_events_per_sec=300" >> /system/build.prop
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
echo "enforce_process_limit=false" >> /system/build.prop
echo "ro.min_pointer_dur=1" >> /system/build.prop
echo "ro.telephony.call_ring.delay=0" >> /system/build.prop
echo "ro.sec.proximity.delay=0" >> /system/build.prop
echo "persist.service.pcsync.enable=0" >> /system/build.prop
echo "persist.service.lgospd.enable=0" >> /system/build.prop
echo "enforce_process_limit=false" >> /system/build.prop
echo "max_service_inactivity=false" >> /system/build.prop
echo "min_hidden_apps=false" >> /system/build.prop
echo "max_hidden_apps=false" >> /system/build.prop
echo "content_app_idle_offset=false" >> /system/build.prop
echo "empty_app_idle_offset=false" >> /system/build.prop
echo "max_activities=false" >> /system/build.prop
echo "activity_inactive_reset_time=false" >> /system/build.prop
echo "max_recent_tasks=false" >> /system/build.prop
echo "min_recent_tasks=false" >> /system/build.prop
echo "app_switch_delay_time=false" >> /system/build.prop
echo "max_processes=false" >> /system/build.prop
echo "proc_start_timeout=false" >> /system/build.prop
echo "cpu_min_check_duration=false" >> /system/build.prop
echo "gc_timeout" >> /system/build.prop
echo "service_timeout=false" >> /system/build.prop
echo "min_crash_interval=false" >> /system/build.prop
echo "ro.config.hw_power_saving=true" >> /system/build.prop
echo "ro.mot.eri.losalert.delay=100000" >> /system/build.prop
echo "persist.ril.uart.flowctrl=90" >> /system/build.prop 
mv /system/lib/egl/libGLES_android.so /system/lib/egl/libGLES_android.so.bak;

done;
