while true
do
DATETIME=`date`
#DATE=`date +%D`
UPTIME=`uptime | sed 's/.*up\s*//' | sed 's/,\s*[0-9]* user.*//' | sed 's/  / /g'`
BATTERYSTATE=$( acpi -b | awk '{ split($5,a,":"); print substr($3,0,2), $4, "["a[1]":"a[2]"]" }' | tr -d ',' )
ssid=$(iwgetid -r)
#cpu=$(sensors | awk '/Core 0/ {print "🌡", $3}')
int=$(internet)
#ram=$(memory)
#back=$(backlight)
#vol=$(volume)·
#green=$(tput setaf 2; ip route get 1.2.3.4 | awk '{print $7}')
#ip=$(ip route get 1.2.3.4 | awk '{print $7}')
#ipsx=$(ip -6 addr|awk '{print $2}'|grep -P '^(?!fe80)[[:alnum:]]{4}:.*/64'|cut -d '/' -f1)
xsetroot -name " ${int} · ${ssid} · $(df -Ph | grep "/dev/sda3" | awk {'print $4'}) · $(battery) · ${DATETIME}"
sleep 5s
done &
