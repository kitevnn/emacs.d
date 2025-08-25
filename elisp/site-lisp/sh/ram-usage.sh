#!/bin/bash

ram_usage=$(free -h | awk '{print $2}' | sed -n '2p' | sed 's/[^0-9.]//g' | awk '{print int($1)}')
ram_used=$(free -h | awk '{print $3}' | sed -n '2p' | sed 's/[^0-9.]//g' | awk '{print int($1)}')

if [ "$ram_used" -gt "$ram_usage" ]; then
        echo "$(free -h | awk '{print $3}' | sed -n '2p' | sed 's/[^0-9.]//g')M"
else
        echo "$(free -h | awk '{print $3}' | sed -n '2p' | sed 's/[^0-9.]//g')G"
fi
