####################################$
SKIPMOUNT=false

# Extract files"
unzip -o "$ZIPFILE" module.prop -d $MODPATH >&2
unzip -o "$ZIPFILE" 'common/*' -d $MODPATH >&2
unzip -o "$ZIPFILE" 'mods/*' -d $MODPATH >&2

# Create directory and give permission
 mkdir -p "$MODPATH"/system/product/overlay/
 set_perm_recursive "$MODPATH" 0 0 0755 0644
 set_perm_recursive "$MODPATH"/system/product/overlay 0 0 0755 0755
 
# Themes
ui_print "------------------------------------------"
ui_print ""
ui_print "1- MIUI Stock"
ui_print "2- MIUI Aqua"
ui_print "3- MIUI Blue"
ui_print "4- MIUI Green"
ui_print "5- MIUI Light Green"
ui_print "6- MIUI Magenta"
ui_print "7- MIUI Orange"
ui_print "8- MIUI Pink"
ui_print "9- MIUI Purple"
ui_print "10- MIUI Raspberry"
ui_print "11- MIUI Red"
ui_print "12- MIUI Yellow"
ui_print ""
ui_print "------------------------------------------"
ui_print ""
 
# Installation 
ui_print ""
ui_print "❗Vol up= Next, Vol Down= Select❗"
ui_print ""
#+-+-+-+-+-+-+-+-+-+-+-+-+-
while true; do
	    ui_print "  $G"
if $VKSEL; then
		G=$((G + 1))
	else 
		break
	fi
if [ $G -gt 12 ]; then
		G=1
	fi
  done
case $G in
 1 ) GT="MIUI Stock"; cp -rf "$MODPATH"/mods/MIUI.apk "$MODPATH"/system/product/overlay;;
 2 ) GT="MIUI Aqua"; cp -rf "$MODPATH"/mods/MIUIAqua.apk "$MODPATH"/system/product/overlay;;
 3 ) GT="MIUI Blue"; cp -rf "$MODPATH"/mods/MIUIBlue.apk "$MODPATH"/system/product/overlay;;
 4 ) GT="MIUI Green"; cp -rf "$MODPATH"/mods/MIUIGreen.apk "$MODPATH"/system/product/overlay;;
 5 ) GT="MIUI Light Green"; cp -rf "$MODPATH"/mods/MIUILightGreen.apk "$MODPATH"/system/product/overlay;;
 6 ) GT="MIUI Magenta"; cp -rf "$MODPATH"/mods/MIUIMagenta.apk "$MODPATH"/system/product/overlay;;
 7 ) GT="MIUI Orange"; cp -rf "$MODPATH"/mods/MIUIOrange.apk "$MODPATH"/system/product/overlay;;
 8 ) GT="MIUI Pink"; cp -rf "$MODPATH"/mods/MIUIPink.apk "$MODPATH"/system/product/overlay;;
 9 ) GT="MIUI Purple"; cp -rf "$MODPATH"/mods/MIUIPurple.apk "$MODPATH"/system/product/overlay;;
 10 ) GT="MIUI Raspberry"; cp -rf "$MODPATH"/mods/MIUIRaspberry.apk "$MODPATH"/system/product/overlay;;
 11 ) GT="MIUI Red"; cp -rf "$MODPATH"/mods/MIUIRed.apk "$MODPATH"/system/product/overlay;;
 12 ) GT="MIUI Yellow"; cp -rf "$MODPATH"/mods/MIUIYellow.apk "$MODPATH"/system/product/overlay;;
esac

ui_print "Selected: $G"

# Delete useless overlays
rm -rf "$MODPATH"/mods/
