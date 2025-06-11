CPU_TEMP="$(cat /sys/devices/platform/coretemp.0/hwmon/hwmon6/temp2_input | awk '{sub(/000$/, "°C", $0); print}' | cut -c 1-2)"
echo "${CPU_TEMP:-null}"
