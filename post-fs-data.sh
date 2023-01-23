
#Permisson
[[ -d /data/adb/modules/RiProG/dummy ]] && (
chmod 755 /data/adb/modules/RiProG/script
chmod 755 /data/adb/modules/RiProG/detector
chmod 755 /data/adb/modules/RiProG/mode
)

#Debloat Unnessesary Things
[[ -d /data/adb/modules/RiProG/dummy ]] && (
mkdir /data/adb/modules/RiProG/system
mkdir /data/adb/modules/RiProG/system/bin
mkdir /data/adb/modules/RiProG/system/etc
mkdir /data/adb/modules/RiProG/system/etc/init
mkdir /data/adb/modules/RiProG/system/vendor
mkdir /data/adb/modules/RiProG/system/vendor/bin
mkdir /data/adb/modules/RiProG/system/vendor/bin/hw
mkdir /data/adb/modules/RiProG/system/vendor/bin/power
mkdir /data/adb/modules/RiProG/system/vendor/bin/power/ddr
mkdir /data/adb/modules/RiProG/system/vendor/bin/power/ddr/bm
mkdir /data/adb/modules/RiProG/system/vendor/bin/power/ddr/bm/tool
mkdir /data/adb/modules/RiProG/system/vendor/etc
mkdir /data/adb/modules/RiProG/system/vendor/etc/init
echo "" > /data/adb/modules/RiProG/system/bin/aee_dumpstate
echo "" > /data/adb/modules/RiProG/system/bin/atrace
echo "" > /data/adb/modules/RiProG/system/bin/bugreport
echo "" > /data/adb/modules/RiProG/system/bin/bugreportz
echo "" > /data/adb/modules/RiProG/system/bin/cplog
echo "" > /data/adb/modules/RiProG/system/bin/crash_dump32
echo "" > /data/adb/modules/RiProG/system/bin/crash_dump64
echo "" > /data/adb/modules/RiProG/system/bin/dataLogDaemon
echo "" > /data/adb/modules/RiProG/system/bin/debuggerd
echo "" > /data/adb/modules/RiProG/system/bin/debuggerd64
echo "" > /data/adb/modules/RiProG/system/bin/dexdump
echo "" > /data/adb/modules/RiProG/system/bin/dexoptanalzyer
echo "" > /data/adb/modules/RiProG/system/bin/diag_socket_log
echo "" > /data/adb/modules/RiProG/system/bin/dmesg
echo "" > /data/adb/modules/RiProG/system/bin/dmlog
echo "" > /data/adb/modules/RiProG/system/bin/dumpakmap
echo "" > /data/adb/modules/RiProG/system/bin/dumpreleases
echo "" > /data/adb/modules/RiProG/system/bin/dumpstate
echo "" > /data/adb/modules/RiProG/system/bin/DumpSystemInfo
echo "" > /data/adb/modules/RiProG/system/bin/emdlogger1
echo "" > /data/adb/modules/RiProG/system/bin/emdlogger2
echo "" > /data/adb/modules/RiProG/system/bin/emdlogger3
echo "" > /data/adb/modules/RiProG/system/bin/emdlogger4
echo "" > /data/adb/modules/RiProG/system/bin/emdlogger5
echo "" > /data/adb/modules/RiProG/system/bin/hcidump
echo "" > /data/adb/modules/RiProG/system/bin/dexdump
echo "" > /data/adb/modules/RiProG/system/bin/i2cdump
echo "" > /data/adb/modules/RiProG/system/bin/klogd
echo "" > /data/adb/modules/RiProG/system/bin/log
echo "" > /data/adb/modules/RiProG/system/bin/log_ctr
echo "" > /data/adb/modules/RiProG/system/bin/log_service
echo "" > /data/adb/modules/RiProG/system/bin/logcat
echo "" > /data/adb/modules/RiProG/system/bin/logd
echo "" > /data/adb/modules/RiProG/system/bin/logger
echo "" > /data/adb/modules/RiProG/system/bin/loggerlauncher
echo "" > /data/adb/modules/RiProG/system/bin/logname
echo "" > /data/adb/modules/RiProG/system/bin/logread
echo "" > /data/adb/modules/RiProG/system/bin/logwrapper
echo "" > /data/adb/modules/RiProG/system/bin/ipdump
echo "" > /data/adb/modules/RiProG/system/bin/lpdumpd
echo "" > /data/adb/modules/RiProG/system/bin/mdlogger
echo "" > /data/adb/modules/RiProG/system/bin/memorydumper
echo "" > /data/adb/modules/RiProG/system/bin/munidumpd
echo "" > /data/adb/modules/RiProG/system/bin/mobile_log_d
echo "" > /data/adb/modules/RiProG/system/bin/nandump
echo "" > /data/adb/modules/RiProG/system/bin/oatdump
echo "" > /data/adb/modules/RiProG/system/bin/outdump
echo "" > /data/adb/modules/RiProG/system/bin/setlogcons
echo "" > /data/adb/modules/RiProG/system/bin/subsystem_ramdump
echo "" > /data/adb/modules/RiProG/system/bin/svlogd
echo "" > /data/adb/modules/RiProG/system/bin/tcpdump
echo "" > /data/adb/modules/RiProG/system/bin/tombstoned
echo "" > /data/adb/modules/RiProG/system/bin/traced
echo "" > /data/adb/modules/RiProG/system/bin/traced_probes
echo "" > /data/adb/modules/RiProG/system/bin/traceroute
echo "" > /data/adb/modules/RiProG/system/bin/traceroute6
echo "" > /data/adb/modules/RiProG/system/bin/wpdiagd
echo "" > /data/adb/modules/RiProG/system/bin/xlog
echo "" > /data/adb/modules/RiProG/system/bin/ylog
echo "" > /data/adb/modules/RiProG/system/bin/ylogbox
echo "" > /data/adb/modules/RiProG/system/bin/ylogctl
echo "" > /data/adb/modules/RiProG/system/bin/ylogkat
echo "" > /data/adb/modules/RiProG/system/bin/lastlog.sh
echo "" > /data/adb/modules/RiProG/system/bin/notify_traceur.sh
echo "" > /data/adb/modules/RiProG/system/bin/trace.sh
echo "" > /data/adb/modules/RiProG/system/bin/ylogdebug.sh
echo "" > /data/adb/modules/RiProG/system/etc/init/atrace.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/atrace.userdebug.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/bugreport.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/dataLogDaemon.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/debuggerd.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/debuggerd64.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/dumpstate.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/emdlogger1.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/emdlogger2.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/emdlogger3.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/emdlogger4.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/emdlogger5.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/log_service.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/logd.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/ipdump.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/mdlogger.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/mdlogger_log_d.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/modemlog_conmgr_service.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/slogmodem.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/tombstoned.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/traceur.rc
echo "" > /data/adb/modules/RiProG/system/etc/init/ylog.rc
echo "" > /data/adb/modules/RiProG/system/vendor/bin/aee_dumpstate
echo "" > /data/adb/modules/RiProG/system/vendor/bin/aee_dumpstatev
echo "" > /data/adb/modules/RiProG/system/vendor/bin/cplogctl
echo "" > /data/adb/modules/RiProG/system/vendor/bin/dmlog
echo "" > /data/adb/modules/RiProG/system/vendor/bin/dumpsys
echo "" > /data/adb/modules/RiProG/system/vendor/bin/emdlogger1
echo "" > /data/adb/modules/RiProG/system/vendor/bin/emdlogger2
echo "" > /data/adb/modules/RiProG/system/vendor/bin/emdlogger5
echo "" > /data/adb/modules/RiProG/system/vendor/bin/flush_slog_modem
echo "" > /data/adb/modules/RiProG/system/vendor/bin/i2cdump
echo "" > /data/adb/modules/RiProG/system/vendor/bin/idd-logreader
echo "" > /data/adb/modules/RiProG/system/vendor/bin/idd-logreader_main
echo "" > /data/adb/modules/RiProG/system/vendor/bin/idd
echo "" > /data/adb/modules/RiProG/system/vendor/bin/log
echo "" > /data/adb/modules/RiProG/system/vendor/bin/logname
echo "" > /data/adb/modules/RiProG/system/vendor/bin/logwrapper
echo "" > /data/adb/modules/RiProG/system/vendor/bin/mdlogger
echo "" > /data/adb/modules/RiProG/system/vendor/bin/memorydumper
echo "" > /data/adb/modules/RiProG/system/vendor/bin/mlogservice
echo "" > /data/adb/modules/RiProG/system/vendor/bin/mobile_log_d
echo "" > /data/adb/modules/RiProG/system/vendor/bin/mrdump_tool
echo "" > /data/adb/modules/RiProG/system/vendor/bin/muxreport
echo "" > /data/adb/modules/RiProG/system/vendor/bin/slogmodem_vendor
echo "" > /data/adb/modules/RiProG/system/vendor/bin/stp_dump3
echo "" > /data/adb/modules/RiProG/system/vendor/bin/systemDebuggerD
echo "" > /data/adb/modules/RiProG/system/vendor/bin/yloglite
echo "" > /data/adb/modules/RiProG/system/vendor/bin/yloglitectl
echo "" > /data/adb/modules/RiProG/system/vendor/bin/yloglitekat
echo "" > /data/adb/modules/RiProG/system/vendor/bin/hw/vendor.sprd.hardware.cplog_connmgr@1.0-service
echo "" > /data/adb/modules/RiProG/system/vendor/bin/hw/vendor.sprd.hardware.log@1.0-service
echo "" > /data/adb/modules/RiProG/system/vendor/bin/power/ddr/bm/tool/ddr_bm_log
echo "" > /data/adb/modules/RiProG/system/vendor/bin/power/ddr/bm/tool/log_to_csv.sh
echo "" > /data/adb/modules/RiProG/system/vendor/etc/mlogservice.conf
echo "" > /data/adb/modules/RiProG/system/vendor/etc/slog_modem.conf
echo "" > /data/adb/modules/RiProG/system/vendor/etc/slog_modem_autotest.conf
echo "" > /data/adb/modules/RiProG/system/vendor/etc/slog_modem_cali.conf
echo "" > /data/adb/modules/RiProG/system/vendor/etc/slog_modem_factory.conf
echo "" > /data/adb/modules/RiProG/system/vendor/etc/yloglite.conf
echo "" > /data/adb/modules/RiProG/system/vendor/etc/yloglitesource.conf
echo "" > /data/adb/modules/RiProG/system/vendor/etc/ylogsource.conf
echo "" > /data/adb/modules/RiProG/system/vendor/etc/ylog.conf.debug
echo "" > /data/adb/modules/RiProG/system/vendor/etc/analyzer.py
echo "" > /data/adb/modules/RiProG/system/vendor/etc/ylog.conf.user
echo "" > /data/adb/modules/RiProG/system/vendor/etc/init/mlogservice.rc
echo "" > /data/adb/modules/RiProG/system/vendor/etc/init/muxreport.rc
echo "" > /data/adb/modules/RiProG/system/vendor/etc/init/slogmodem_vendor.rc
echo "" > /data/adb/modules/RiProG/system/vendor/etc/init/systemDebuggerD.rc
echo "" > /data/adb/modules/RiProG/system/vendor/etc/init/vendor.sprd.hardware.cplog_connmgr@1.0-service.rc
echo "" > /data/adb/modules/RiProG/system/vendor/etc/init/vendor.sprd.hardware.log@1.0-service.rc
echo "" > /data/adb/modules/RiProG/system/vendor/etc/init/yloglite.rc
)

#First run only
[[ -d /data/adb/modules/RiProG/dummy ]] && (rm -r /data/adb/modules/RiProG/dummy)