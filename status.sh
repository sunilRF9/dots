#! /bin/sh
while true
do
DATE=`date | cut -c 1-16`
TIME=`date +"%T"`
BATTERYSTATE=$( acpi -b | awk '{ split($5,a,":"); print substr($3,0,2), $4, "["a[1]":"a[2]"]" }' | tr -d ',' )
xsetroot -name "$(df -Ph | grep "/dev/sda3" | awk {'print $4'}) · ${BATTERYSTATE} · ${DATE}${TIME}"
sleep 5s
done &
