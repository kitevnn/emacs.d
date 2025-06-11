disk_device_type="/dev/sda"
df -h | awk '{print $1, $2, $3, $4, $5}' | grep ${disk_device_type} | head -n 1 | awk '{print $5}'
