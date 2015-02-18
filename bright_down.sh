#! /bin/sh

max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

if (($brightness > 0)); then
  let brightness=$brightness-100
  echo $brightness > /sys/class/backlight/intel_backlight/brightness
  #notification - would be cool to do something with i3bar, though.
  notify-send Brightness "${brightness}/${max_brightness}" -t 200
fi



