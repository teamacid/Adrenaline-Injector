#!/sbin/sh
#
# dsexton702
#
WIPEOPT=/tmp/aroma/wiping.prop
MISCOPT=/tmp/aroma/misc.prop
GAPPSOPT=/tmp/aroma/gappsinv.prop
#
echo "<b>Wiping Options</b>"
if [ -f $WIPEOPT ]; then
    while read line; do
      echo $line
    done < $WIPEOPT
else
    echo "<b>wiping.prop does not exist!</b>"
    echo " "
    exit 5
fi

echo "<b>Misc Options</b>"
if [ -f $MISCOPT ]; then
    while read line; do
      echo $line
    done < $MISCOPT
else
    echo "<b>misc.prop does not exist!</b>"
    echo " "
    exit 5
fi

echo "<b>Gapps Options</b>"
if [ -f $GAPPSOPT ]; then
    while read line; do
      echo $line
    done < $GAPPSOPT
else
    echo "<b>gapps.prop does not exist!</b>"
    echo " "
    exit 5
fi

#-- Exit Code
exit 10
