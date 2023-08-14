check_file() {
  if [[ -f "$1" ]]; then
    return 0
  else
    return 1
  fi
}

read_file_unlock() {
  if check_file "$1"; then
    chmod 444 "$1"
    cat "$1"
  fi
}

write_file_lock() {
  if check_file "$1"; then
    chmod 666 "$1"
    echo "$2" > "$1"
    chmod 444 "$1"
  fi
}

while [[ -z "$(resetprop sys.boot_completed)" ]]; do
    sleep 5
done

write_file_lock "/proc/sys/kernel/panic" "0" 
write_file_lock "/proc/sys/kernel/panic_on_oops "0
write_file_lock "/proc/sys/kernel/panic_on_rcu_stall" "0"
write_file_lock "/proc/sys/kernel/panic_on_warn" "0"
write_file_lock "/sys/module/kernel/parameters/panic" "0"
write_file_lock "/sys/module/kernel/parameters/panic_on_warn" "0"
write_file_lock "/sys/module/kernel/parameters/panic_on_oops" "0"

write_file_lock "/proc/sys/kernel/printk" "0 0 0 0"
write_file_lock "/proc/sys/kernel/printk_devkmsg" "off"
write_file_lock "/sys/module/printk/parameters/console_suspend" "Y"
write_file_lock "/sys/module/printk/parameters/cpu" "N"
write_file_lock "/sys/module/printk/parameters/ignore_loglevel" "Y"
write_file_lock "/sys/module/printk/parameters/pid" "N"
write_file_lock "/sys/module/printk/parameters/time" "N"
write_file_lock "/sys/kernel/printk_mode/printk_mode" "0"

find /sys/ -name "*log*" -o -name debug_mask -o -name debug_level -o -name edac_mc_log_ce -o -name edac_mc_log_ue -o -name enable_event_log -o -name log_ecn_error -o -name snapshot_crashdumper | while IFS= read -r log; do
wr
write_file_lock "$log" "0"
done
find /sys/kernel/debug/kgsl/kgsl-3d0/ -name '*log*' | while IFS= read -r log; do
write_file_lock "$log" "0"
done

for sched in /sys/kernel/debug/sched_features/*; do
  write_file_lock "$sched" "NO_GENTLE_FAIR_SLEEPERS"
  write_file_lock "$sched" "NO_HRTICK"
  write_file_lock "$sched" "NO_DOUBLE_TICK"
  write_file_lock "$sched" "NO_RT_RUNTIME_SHARE"
  write_file_lock "$sched" "NO_TTWU_QUEUE"
  write_file_lock "$sched" "UTIL_EST"
  write_file_lock "$sched" "ARCH_CAPACITY"
done

for queue in /sys/block/mmcblk*/queue; do
  write_file_lock "$queue/add_random" "0"
  write_file_lock "$queue/iostats" "0"
  write_file_lock "$queue/read_ahead_kb" "256"
  write_file_lock "$queue/nr_requests" "128"
done

write_file_lock "/proc/sys/vm/drop_caches" "3"
write_file_lock "/proc/sys/vm/dirty_background_ratio" "11"
write_file_lock "/proc/sys/vm/dirty_expire_centisecs" "400"
write_file_lock "/proc/sys/vm/page-cluster" "0"
write_file_lock "/proc/sys/vm/dirty_ratio" "20"
write_file_lock "/proc/sys/vm/laptop_mode" "0"
write_file_lock "/proc/sys/vm/block_dump" "0"
write_file_lock "/proc/sys/vm/compact_memory" "1"
write_file_lock "/proc/sys/vm/dirty_writeback_centisecs" "3000"
write_file_lock "/proc/sys/vm/oom_dump_tasks" "0"
write_file_lock "/proc/sys/vm/oom_kill_allocating_task" "0"
write_file_lock "/proc/sys/vm/stat_interval" "1103"
write_file_lock "/proc/sys/vm/panic_on_oom" "0"
write_file_lock "/proc/sys/vm/swappiness" "60"
write_file_lock "/proc/sys/vm/vfs_cache_pressure" "94"
write_file_lock "/proc/sys/vm/overcommit_ratio" "50"
write_file_lock "/proc/sys/vm/extra_free_kbytes" "24300"
write_file_lock "/proc/sys/kernel/random/read_wakeup_threshold" "64"
write_file_lock "/proc/sys/kernel/random/write_wakeup_threshold" "128"

resetprop -n "debug.sf.disable_backpressure" "1"
resetprop -n "debug.sf.latch_unsignaled" "1"
resetprop -n "debug.sf.enable_hwc_vds" "0"
resetprop -n "debug.sf.early_phase_offset_ns" "500000"
resetprop -n "debug.sf.early_app_phase_offset_ns" "500000"
resetprop -n "debug.sf.early_gl_phase_offset_ns" "3000000"
resetprop -n "debug.sf.early_gl_app_phase_offset_ns" "15000000"
resetprop -n "debug.sf.high_fps_early_phase_offset_ns" "6100000"
resetprop -n "debug.sf.high_fps_early_gl_phase_offset_ns" "650000"
resetprop -n "debug.sf.high_fps_late_app_phase_offset_ns" "100000"
resetprop -n "debug.sf.phase_offset_threshold_for_next_vsync_ns" "6100000"
resetprop -n "debug.sf.showupdates" "0"
resetprop -n "debug.sf.showcpu" "0"
resetprop -n "debug.sf.showbackground" "0"
resetprop -n "debug.sf.showfps" "0"
resetprop -n "debug.sf.hw" "1"

AI > /dev/null 2>&1 &