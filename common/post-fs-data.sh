properties=(
  "persist.sys.fuse.passthrough.enable=true"

  "ro.hwui.texture_cache_size=128"
  "ro.hwui.layer_cache_size=64"
  "ro.hwui.r_buffer_cache_size=16"
  "ro.hwui.path_cache_size=64"
  "ro.hwui.gradient_cache_size=2"
  "ro.hwui.drop_shadow_cache_size=8"
  "ro.hwui.texture_cache_flushrate=0.2"
  "ro.hwui.text_small_cache_width=2048"
  "ro.hwui.text_small_cache_height=2048"
  "ro.hwui.text_large_cache_width=4096"
  "ro.hwui.text_large_cache_height=4096"

  "ro.iorapd.enable=false"
  "iorapd.perfetto.enable=false"
  "iorapd.readahead.enable=false"
  "persist.device_config.runtime_native_boot.iorap_readahead_enable=false"
)

for prop in "${properties[@]}"; do
  resetprop -n "${prop%=*}" "${prop#*=}"
done
