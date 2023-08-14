SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=true
LATESTARTSERVICE=true

REPLACE="
"
sleep 2

ui_print ""
ui_print "************************************"
ui_print "*   RiProG Open Source @ RiOpSo   *"
ui_print "************************************"
ui_print "*      Muhammad Rizki @ RiProG      *"
ui_print "************************************"
ui_print ""

sleep 2

ui_print "- Extracting module files"
unzip -o "$ZIPFILE" 'gamelist.txt' -d $MODPATH >&2
mkdir -p $MODPATH/system/bin
unzip -o "$ZIPFILE" 'AI' -d $MODPATH/system/bin >&2

sleep 2

chmod +x $MODPATH/system/bin/AI