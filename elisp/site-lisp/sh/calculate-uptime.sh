#!/bin/bash

filename="uptime"
file1="/root/.emacs.d/archive/${filename}"

if [ ! -r "$file1" ]; then
    echo "Error: The file $file1 does not exist or is not readable."
    exit 1
fi

# set default value to 0
total_seconds=0

# format the first line
first_line=$(head -n 1 "$file1")
first_line_hours=$(echo "$first_line" | grep -oP '(\d+)\s+hour' | grep -oP '\d+' || echo 0)
first_line_minutes=$(echo "$first_line" | grep -oP '(\d+)\s+minute' | grep -oP '\d+' || echo 0)
first_line_seconds=$(echo "$first_line" | grep -oP '(\d+)\s+second' | grep -oP '\d+' || echo 0)

total_seconds=$(( total_seconds + first_line_hours * 3600 + first_line_minutes * 60 + first_line_seconds ))

# format all lines except for the first
while IFS= read -r line; do
    hours=$(echo "$line" | grep -oP '(\d+)\s+hour' | grep -oP '\d+' || echo 0)
    minutes=$(echo "$line" | grep -oP '(\d+)\s+minute' | grep -oP '\d+' || echo 0)
    seconds=$(echo "$line" | grep -oP '(\d+)\s+second' | grep -oP '\d+' || echo 0)

    total_seconds=$(( total_seconds + hours * 3600 + minutes * 60 + seconds ))
done < <(tail -n +2 "$file1")

# convert them
final_hours=$(( total_seconds / 3600 ))
remaining_seconds=$(( total_seconds % 3600 ))
final_minutes=$(( remaining_seconds / 60 ))
final_seconds=$(( remaining_seconds % 60 ))

echo "Finish: $hours hours, $minutes minutes, $seconds seconds"
echo "Accompanying With GNU Emacs: $final_hours hours, $final_minutes minutes, $final_seconds seconds" > "$file1"
