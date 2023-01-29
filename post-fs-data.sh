[[ -f /data/adb/modules/RiProG/setup ]] && (
chmod 755  /data/adb/modules/RiProG/setup
/data/adb/modules/RiProG/setup
rm /data/adb/modules/RiProG/setup
)
[[ -d /data/adb/modules/RiProG/feature/tweak ]] && (su -c /data/adb/modules/RiProG/pretweak)