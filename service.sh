sleep 30
[[ -d /data/adb/modules/RiProG/feature/tweak ]] && (su -c /data/adb/modules/RiProG/tweak)
[[ -d /data/adb/modules/RiProG/feature/ai ]] && (
resetprop -n tweak.detect.mode unset
resetprop -n tweak.apply.mode unset
su -c /data/adb/modules/RiProG/ai
)
