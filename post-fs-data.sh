[[ ! -f /data/adb/modules/RiProG/setupcomplete ]] && (
chmod 755 /data/adb/modules/RiProG/tweak1
chmod 755 /data/adb/modules/RiProG/tweak2
chmod 755 /data/adb/modules/RiProG/ai
)
[[ ! -f /data/adb/modules/RiProG/setupcomplete ]] && (
mkdir /data/adb/modules/RiProG/feature
mkdir /data/adb/modules/RiProG/feature/ai
mkdir /data/adb/modules/RiProG/feature/tweak
echo "" > /data/adb/modules/RiProG/feature/ai/notification
echo "" > /data/adb/modules/RiProG/feature/ai/powersave
echo "" > /data/adb/modules/RiProG/feature/ai/lmk
echo "" > /data/adb/modules/RiProG/feature/ai/maxfreq
echo "" > /data/adb/modules/RiProG/feature/ai/halfcore
echo "" > /data/adb/modules/RiProG/feature/tweak/debloat
echo "" > /data/adb/modules/RiProG/feature/tweak/dalvikexec
echo "" > /data/adb/modules/RiProG/feature/tweak/purgeassets
echo "" > /data/adb/modules/RiProG/feature/tweak/skiagl
echo "" > /data/adb/modules/RiProG/feature/tweak/zygotepreforking
echo "" > /data/adb/modules/RiProG/feature/tweak/fusepasstrough
echo "" > /data/adb/modules/RiProG/feature/tweak/faststreaming
echo "" > /data/adb/modules/RiProG/feature/tweak/mediacodex
echo "" > /data/adb/modules/RiProG/feature/tweak/smoothgui
echo "" > /data/adb/modules/RiProG/feature/tweak/networktweak
echo "" > /data/adb/modules/RiProG/feature/tweak/clearaudio
echo "" > /data/adb/modules/RiProG/feature/tweak/disableloganddebug
echo "" > /data/adb/modules/RiProG/feature/tweak/disableprintk
echo "" > /data/adb/modules/RiProG/feature/tweak/disablepanic
echo "" > /data/adb/modules/RiProG/feature/tweak/fstrim
)
[[ ! -f /data/adb/modules/RiProG/setupcomplete ]] && (echo "" > /data/adb/modules/RiProG/setupcomplete)
[[ -d /data/adb/modules/RiProG/feature/tweak ]] && (su -c /data/adb/modules/RiProG/tweak1)