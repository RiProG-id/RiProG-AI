#!/bin/sh

SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=true
LATESTARTSERVICE=true

REPLACE="
"
sleep 2

ui_print ""
ui_print "************************************"
ui_print "*     RiProG Open Source @ RiOpSo  *"
ui_print "************************************"
ui_print "*        Muhammad Rizki @ RiProG    *"
ui_print "************************************"
ui_print ""

sleep 2

ui_print "- Extracting module files"
unzip -o "$ZIPFILE" 'gamelist.txt' -d "$MODPATH" >&2
mkdir -p "$MODPATH"/system/bin
unzip -o "$ZIPFILE" 'AI' -d "$MODPATH"/system/bin >&2
ui_print "- Detecting installed game"

sleep 2

counter=1
package_list=$(cmd package list packages | cut -f 2 -d ":")
tmp_file="$MODPATH/gamelist_tmp.txt"

while IFS= read -r gamelist || [ -n "$gamelist" ]; do
    line=$(echo "$gamelist" | awk '!/ /')
    if echo "$package_list" | grep -q "$line"; then
        ui_print "  $counter. $line"
        echo "$line" >> "$tmp_file"
        counter=$((counter + 1))
    fi
done < "$MODPATH/gamelist.txt"

mv "$tmp_file" "$MODPATH/gamelist.txt"
ui_print "  If your game is not detected,"
ui_print "  Edit gamelist.txt, add, and reinstall"

sleep 2

chmod +x "$MODPATH"/system/bin/AI

