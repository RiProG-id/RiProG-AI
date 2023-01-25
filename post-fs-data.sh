[[ ! -f /data/adb/modules/RiProG/setupcomplete ]] && (
chmod 755 /data/adb/modules/RiProG/script
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
echo "" > /data/adb/modules/RiProG/feature/tweak/disableprink
echo "" > /data/adb/modules/RiProG/feature/tweak/disablepanic
echo "" > /data/adb/modules/RiProG/feature/tweak/fstrim
)
[[ ! -f /data/adb/modules/RiProG/setupcomplete ]] && (echo "" > /data/adb/modules/RiProG/setupcomplete)
if [[ -f /data/adb/modules/RiProG/feature/tweak/debloat ]]
then
[[ ! -d /data/adb/modules/RiProG/system ]] && (
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
else
[[ -d /data/adb/modules/RiProG/system ]] && (rm -rf /data/adb/modules/RiProG/system)
fi
[[ -f /data/adb/modules/RiProG/feature/tweak/dalvikexec ]] && (resetprop -n dalvik.vm.execution-mode int:jit)
[[ -f /data/adb/modules/RiProG/feature/tweak/purgeassets ]] && (resetprop -n persist.sys.purgeable_assets 1)
[[ -f /data/adb/modules/RiProG/feature/tweak/skiagl ]] && (resetprop -n debug.hwui.renderer skiagl)
[[ -f /data/adb/modules/RiProG/feature/tweak/zygotepeforking ]] && (resetprop -n persist.device_config.runtime_native.usap_pool_enabled true)
[[ -f /data/adb/modules/RiProG/feature/tweak/fusepasstrough ]] && (resetprop -n persist.sys.fuse.passthrough.enable true)
#Fast Streaming
[[ -f /data/adb/modules/RiProG/feature/tweak/faststreaming ]] && (
resetprop -n media.stagefright.enable-player true
resetprop -n media.stagefright.enable-meta true
resetprop -n media.stagefright.enable-scan true
resetprop -n media.stagefright.enable-http true
resetprop -n media.stagefright.enable-rtsp true
resetprop -n media.stagefright.enable-record false
)

#Media Codex
[[ -f /data/adb/modules/RiProG/feature/tweak/mediacodex ]] && (
resetprop -n ro.media.dec.aud.flac.enabled 1
resetprop -n ro.media.dec.aud.wma.enabled 1
resetprop -n ro.media.dec.vid.avi.enabled 1
resetprop -n ro.media.dec.vid.wmv.enabled 1
resetprop -n ro.media.dec.aud.wma.enabled 1
resetprop -n ro.media.dec.aud.mp3.enabled 1
resetprop -n ro.media.dec.vid.mp4.enabled 1
resetprop -n ro.media.dec.aud.flac.enabled 1
resetprop -n ro.media.dec.vid.H.264.enabled 1
resetprop -n ro.media.enc.aud.flac.enabled 1
resetprop -n ro.media.enc.vid.H.264.enabled 1
resetprop -n ro.media.enc.aud.wma.enabled 1
resetprop -n ro.media.enc.vid.wmv.enabled 1
resetprop -n ro.media.enc.aud.mp3.enabled 1
resetprop -n ro.media.enc.vid.mp4.enabled 1
)

#Smooth GUI
[[ -f /data/adb/modules/RiProG/feature/tweak/smoothgui ]] && (
resetprop -n sys.use_fifo_ui 1
resetprop -n windows.mgr.max_event_per_sec 180
resetprop -n ro.min_pointer_dur 8
resetprop -n ro.min.fling_velocity 8000
resetprop -n ro.max.fling_velocity 12000
resetprop -n persist.sys.lgospd.enable 0
resetprop -n persist.sys.pcsync.enable 0
resetprop -n persist.sys.scrollingcache 3
)

#Network Tweak
[[ -f /data/adb/modules/RiProG/feature/tweak/networktweak ]] && (
resetprop -n net.tcp.buffersize.default "6144,87380,110208,6144,16384,110208"
resetprop -n net.tcp.buffersize.wifi 262144,524288,1048576,262144,524288,1048576"
resetprop -n net.tcp.buffersize.lte "262144,524288,3145728,262144,524288,3145728"
resetprop -n net.tcp.buffersize.hsdpa "6144,262144,1048576,6144,262144,1048576"
resetprop -n net.tcp.buffersize.evdo_b "6144,262144,1048576,6144,262144,1048576"
resetprop -n net.tcp.buffersize.umts "6144,87380,110208,6144,16384,110208"
resetprop -n net.tcp.buffersize.hspa "6144,87380,262144,6144,16384,262144"
resetprop -n net.tcp.buffersize.gprs "6144,8760,11680,6144,8760,11680"
resetprop -n net.tcp.buffersize.edge "6144,26280,35040,6144,16384,35040"
resetprop -n net.tcp.default_init_rwnd 60
resetprop -n net.ipv4.tcp_ecn 0
resetprop -n net.ipv4.route.flush 1
resetprop -n net.ipv4.tcp_rfc1337 1
resetprop -n net.ipv4.ip_no_pmtu_disc 0
resetprop -n net.ipv4.tcp_sack 1
resetprop -n net.ipv4.tcp_fack 1
resetprop -n net.ipv4.tcp_window_scaling 1
resetprop -n net.ipv4.tcp_timestamps 0
resetprop -n net.ipv4.tcp_rmem "6144 87380 1048576"
resetprop -n net.ipv4.tcp_wmem "6144 87380 1048576"
resetprop -n net.ipv4.tcp_mem "187000 187000 187000"
resetprop -n net.ipv4.tcp_no_metrics_save 1
resetprop -n net.ipv4.icmp_echo_ignore_all 1
resetprop -n net.ipv4.tcp_moderate_rcvbuf 1
resetprop -n net.ipv4.conf.all.accept_redirects 0
resetprop -n net.ipv4.conf.default.accept_redirects 0
resetprop -n net.ipv4.conf.all.rp_filter 1
resetprop -n persist.cust.tel.eons 1
resetprop -n persist.cust.tel.adapt 1
)
[[ -f /data/adb/modules/RiProG/feature/tweak/clearaudio ]] && (
resetprop -n persist.audio.fluence.mode endfire
resetprop -n persist.audio.vr.enable true
resetprop -n persist.audio.handset.mic digital
resetprop -n af.resampler.quality 255
resetprop -n mpq.audio.decode true
)
#Disable logger and debugger
[[ -d /data/adb/modules/RiProG/feature/tweak/disableloganddebug ]] && (
resetprop -n log.resolves 0
resetprop -n log.pm4 0
resetprop -n log.pm4mem 0
resetprop -n log.shaders 0
resetprop -n log.sc_dev 0
resetprop -n log.cffdump 0
resetprop -n log.cffdump_with_ifh 0
resetprop -n log.cffdump_no_memzero 0
resetprop -n log.dumpx 0 
resetprop -n log.primitives 0
resetprop -n log_frame_info 0
resetprop -n log_mp4dectime 0
resetprop -n log_posttime 0
resetprop -n log_profile 0
resetprop -n log_playerdriver 0
resetprop -n log_metadatadriver 0
resetprop -n log_playerengine 0
resetprop -n log_datapath 0
resetprop -n log_mp4parsernode 0
resetprop -n log_basedecnode 0
resetprop -n log_audiodecnode 0
resetprop -n log_videodecnode 0
resetprop -n log_outputnode 0
resetprop -n log_outputnodeinputport 0
resetprop -n log_audiooutput 0
resetprop -n log_surfaceoutput 0
resetprop -n log_omxmp4 0
resetprop -n log_ao 0
resetprop -n log_fps_interval 0
resetprop -n debug_test 0
resetprop -n profiler.debugmonitor false
resetprop -n profiler.hung.dumpdobugreport false
resetprop -n persist.android.strictmode 0
resetprop -n dalvik.vm.verify-bytecode false
resetprop -n libc.debug.malloc 0
resetprop -n av.debug.disable.pers.cache true
resetprop -n persist.vendor.ssr.enable_ramdumps 0
resetprop -n config.disable_rtt true
resetprop -n dalvik.vm.checkjni false
resetprop -n db.log.slow_query_threshold 0
resetprop -n debug.qualcomm.sns.hal 0 
resetprop -n debug.qualcomm.sns.daemon 0 
resetprop -n debug.qualcomm.sns.libsensor1 0
resetprop -n debug.egl.profiler 0
resetprop -n debug.enable.gamed 0
resetprop -n debug.enable.wl_log 0
resetprop -n debug.hwc.otf 0
resetprop -n debug.hwc_dump_en 0
resetprop -n debug.sf.dump 0
resetprop -n debug.sf.ddms 0
resetprop -n debug.sf.gpu_comp_tiling 0
resetprop -n debug.sf.disable_backpressure 1
resetprop -n debug.sf.recomputecrop 0
resetprop -n debugtool.anrhistory 0
resetprop -n hwui.use_gpu_pixel_buffers false
resetprop -n logcat.live disable
resetprop -n logcast.live disable
resetprop -n live.logcat disable
resetprop -n net.ipv4.tcp_no_metrics_save 1
resetprop -n media.stagefright.log-uri 0
resetprop -n profiler.debugmonitor false
resetprop -n profiler.launch false
resetprop -n profiler.hung.dumpdobugreport false
resetprop -n persist.android.strictmode 0
resetprop -n ro.egl.destroy_after_detach false
resetprop -n ro.config.ksm.support false
resetprop -n ro.config.nocheckin=1
resetprop -n ro.debuggable=0
resetprop -n ro.logd.size=0
resetprop -n ro.compcache.default 0
resetprop -n ro.kernel.android.checkjni 0
resetprop -n ro.kernel.qemu.gles 0
resetprop -n ro.kernel.checkjni 0
resetprop -n ro.sf.battery_log 0
resetprop -n ro.sf.battery.log.enabled 0
resetprop -n ro.telephony.call_ring.multiple false
resetprop -n rw.logger 0
resetprop -n persist.ims.disableDebugLogs 1
resetprop -n persist.debug.wfd.enable 0
resetprop -n persist.bt.a2dp.aac_disable true
resetprop -n persist.data.qmi.adb_logmask 0
resetprop -n persist.debug.sensors.hal 0 
resetprop -n persist.data.qmi.adb_logmask 0
resetprop -n persist.brcm.log none 
resetprop -n persist.brcm.cp_crash none 
resetprop -n persist.brcm.ap_crash none
resetprop -n persist.sys.dun.override 0
resetprop -n persist.radio.oem_socket false
resetprop -n persist.sys.wfd.virtual 0
resetprop -n persist.ims.enableADBLogs 0
resetprop -n persist.ims.enableDebugLogs 0
resetprop -n persist.ims.disabled 1
resetprop -n persist.ims.disableQXDMLogs 0
resetprop -n persist.ims.disableIMSLogs 0
resetprop -n persist.sys.offlinelog.kernel 1
resetprop -n persist.sys.offlinelog.logcat 1
resetprop -n persist.oem.dump 0
resetprop -n profiler.forse_disable_err_rpt 1
resetprop -n profiler.forse_disable_ulog=1
resetprop -n sdm.debug.disable_inline_rotator 1
resetprop -n sdm.debug.disable_skip_validate 1
resetprop -n sys.games.gt.prof 1
resetprop -n sys.hwc.gpu_perf_mode 0
resetprop -n vendor.fm.a2dp.conc.disabled true
resetprop -n vendor.vidc.enc.disable_bframes 1
resetprop -n vidc.debug.level 0
resetprop -n video.disable.ubwc 1
resetprop -n wifi.interface wlan 0
)