#!/bin/bash

# Please save file called "weather" into ~/.emacs.d/archive.
# And pull the latest data and save it if not updating. (or with use api payfully 󰫕)

weather_temperature=$(cat ~/.emacs.d/archive/weather | awk -F'[()]' '{print $2}' | grep -oP '[0-9]+' | sed -n '4p')
weather_location1=$(cat ~/.emacs.d/archive/weather | sed -n '38p' | awk -F ', ' '{print $2}' | cut -c '1-9')
weather_location2=$(cat ~/.emacs.d/archive/weather | sed -n '38p' | awk -F ', ' '{print $3}')
echo "$weather_temperature°C ($weather_location1, $weather_location2)"
