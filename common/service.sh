#!/bin/sh
read_file() {
  if [ -f "$1" ]; then
    if [ ! -r "$1" ]; then
      chmod +r "$1"
    fi
    cat "$1"
  fi
}
write_file() {
  if [ -f "$1" ]; then
    if [ ! -w "$1" ]; then
      chmod +w "$1"
    fi
    echo "$2" >"$1"
  fi
}
sleep 1
while [ -z "$(resetprop sys.boot_completed)" ]; do
  sleep 5
done
sleep 1
write_file /proc/sys/kernel/panic "0"
write_file /proc/sys/kernel/panic_on_oops "0"
write_file /proc/sys/kernel/panic_on_rcu_stall "0"
write_file /proc/sys/kernel/panic_on_warn "0"
write_file /sys/module/kernel/parameters/panic "0"
write_file /sys/module/kernel/parameters/panic_on_warn "0"
write_file /sys/module/kernel/parameters/panic_on_oops "0"
write_file /proc/sys/kernel/printk "0 0 0 0"
write_file /proc/sys/kernel/printk_devkmsg "off"
write_file /sys/module/printk/parameters/console_suspend "Y"
write_file /sys/module/printk/parameters/cpu "N"
write_file /sys/module/printk/parameters/ignore_loglevel "Y"
write_file /sys/module/printk/parameters/pid "N"
write_file /sys/module/printk/parameters/time "N"
write_file /sys/kernel/printk_mode/printk_mode "0"
sleep 1
find /sys/ -name "*log*" -o -name "*debug*" | while IFS= read -r logdebug; do
  write_file "$logdebug" "0"
done
sleep 1
write_file /proc/sys/kernel/sched_tunable_scaling "1"
write_file NO_GENTLE_FAIR_SLEEPERS:1 >/sys/kernel/debug/sched_features
write_file START_DEBIT:1 >/sys/kernel/debug/sched_features
write_file NEXT_BUDDY:1 >/sys/kernel/debug/sched_features
write_file LAST_BUDDY:1 >/sys/kernel/debug/sched_features
write_file STRICT_SKIP_BUDDY:1 >/sys/kernel/debug/sched_features
write_file CACHE_HOT_BUDDY:1 >/sys/kernel/debug/sched_features
write_file WAKEUP_PREEMPTION:1 >/sys/kernel/debug/sched_features
write_file NO_HRTICK:1 >/sys/kernel/debug/sched_features
write_file NO_DOUBLE_TICK:1 >/sys/kernel/debug/sched_features
write_file LB_BIAS:1 >/sys/kernel/debug/sched_features
write_file NONTASK_CAPACITY:1 >/sys/kernel/debug/sched_features
write_file NO_TTWU_QUEUE:1 >/sys/kernel/debug/sched_features
write_file NO_SIS_AVG_CPU:1 >/sys/kernel/debug/sched_features
write_file RT_PUSH_IPI:1 >/sys/kernel/debug/sched_features
write_file NO_FORCE_SD_OVERLAP:1 >/sys/kernel/debug/sched_features
write_file NO_RT_RUNTIME_SHARE:1 >/sys/kernel/debug/sched_features
write_file NO_LB_MIN:1 >/sys/kernel/debug/sched_features
write_file ATTACH_AGE_LOAD:1 >/sys/kernel/debug/sched_features
write_file ENERGY_AWARE:1 >/sys/kernel/debug/sched_features
write_file NO_MIN_CAPACITY_CAPPING:1 >/sys/kernel/debug/sched_features
write_file NO_FBT_STRICT_ORDER:1 >/sys/kernel/debug/sched_features
write_file EAS_USE_NEED_IDLE:1 >/sys/kernel/debug/sched_features
sleep 1
write_file /proc/sys/vm/drop_caches "3"
write_file /proc/sys/vm/dirty_background_ratio "20"
write_file /proc/sys/vm/dirty_expire_centisecs "1000"
write_file /proc/sys/vm/page-cluster "0"
write_file /proc/sys/vm/dirty_ratio "10"
write_file /proc/sys/vm/laptop_mode "0"
write_file /proc/sys/vm/block_dump "1"
write_file /proc/sys/vm/compact_memory "0"
write_file /proc/sys/vm/dirty_writeback_centisecs "5000"
write_file /proc/sys/vm/oom_dump_tasks "1"
write_file /proc/sys/vm/oom_kill_allocating_task "0"
write_file /proc/sys/vm/stat_interval "60"
write_file /proc/sys/vm/panic_on_oom "0"
write_file /proc/sys/vm/swappiness "20"
write_file /proc/sys/vm/vfs_cache_pressure "50"
write_file /proc/sys/vm/overcommit_ratio "80"
write_file /proc/sys/vm/extra_free_kbytes "10240"
write_file /proc/sys/kernel/random/read_wakeup_threshold "64"
write_file /proc/sys/kernel/random/write_wakeup_threshold "128"
sleep 1
android_properties="
debug.sf.disable_backpressure=1
debug.sf.latch_unsignaled=1
debug.sf.enable_hwc_vds=0
debug.sf.early_phase_offset_ns=500000
debug.sf.early_app_phase_offset_ns=500000
debug.sf.early_gl_phase_offset_ns=3000000
debug.sf.early_gl_app_phase_offset_ns=15000000
debug.sf.high_fps_early_phase_offset_ns=6100000
debug.sf.high_fps_early_gl_phase_offset_ns=650000
debug.sf.high_fps_late_app_phase_offset_ns=100000
debug.sf.phase_offset_threshold_for_next_vsync_ns=6100000
debug.sf.showupdates=0
debug.sf.showcpu=0
debug.sf.showbackground=0
debug.sf.showfps=0
debug.sf.hw=0
"
echo "$android_properties" | while IFS= read -r prop; do
  prop_name="${prop%%=*}"
  prop_value="${prop#*=}"
  resetprop -n "$prop_name" "$prop_value"
done
sleep 1
AI >/dev/null 2>&1
