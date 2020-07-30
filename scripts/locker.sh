#!/bin/sh
exec xautolock  -detectsleep -time 2 -locker "/home/coutinho/configs/i3lock-color/lock.sh" -notify 30 -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 30 seconds'" &
exec xidlehook  --not-when-fullscreen --timer 360 "systemctl suspend" - &
exec xset s 720 &
#xidlehook --not-when-fullscreen --not-when-audio --timer 60 "/home/coutinho/configs/i3lock-color/lock.sh" - &
