while [[ -z $(getprop sys.boot_completed) ]]; do sleep 5; done 
[[ -d /data/adb/modules/RiProG/feature/tweak ]] && (su -c /data/adb/modules/RiProG/tweak2)
[[ -d /data/adb/modules/RiProG/feature/ai ]] && (su -c /data/adb/modules/RiProG/script/preai)