#!/bin/sh

resetprop -n "persist.sys.fuse.passthrough.enable" "true"

resetprop -n "ro.hwui.texture_cache_size" "128"
resetprop -n "ro.hwui.layer_cache_size" "64"
resetprop -n "ro.hwui.r_buffer_cache_size" "16"
resetprop -n "ro.hwui.path_cache_size" "64"
resetprop -n "ro.hwui.gradient_cache_size" "2"
resetprop -n "ro.hwui.drop_shadow_cache_size" "8"
resetprop -n "ro.hwui.texture_cache_flushrate" "0.2"
resetprop -n "ro.hwui.text_small_cache_width" "2048"
resetprop -n "ro.hwui.text_small_cache_height" "2048"
resetprop -n "ro.hwui.text_large_cache_width" "4096"
resetprop -n "ro.hwui.text_large_cache_height" "4096"

resetprop -n "ro.iorapd.enable" "false"
resetprop -n "iorapd.perfetto.enable" "false"
resetprop -n "iorapd.readahead.enable" "false"
resetprop -n "persist.device_config.runtime_native_boot.iorap_readahead_enable" "false"

resetprop -n "persist.sys.lgospd.enable" "0"
resetprop -n "persist.sys.pcsync.enable" "0"
resetprop -n "persist.sys.scrollingcache" "2"
resetprop -n "ro.max.fling_velocity" "20000"
resetprop -n "ro.min.fling_velocity" "8000"
resetprop -n "ro.min_pointer_dur" "8"
resetprop -n "sys.use_fifo_ui" "1"
resetprop -n "windowsmgr.max_event_per_sec" "200"