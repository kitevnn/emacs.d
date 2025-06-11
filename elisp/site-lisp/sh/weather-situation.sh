# 一定要记得将weather天气情况保存在~/.config/emacs/archive或者下面的路径自己根据实际情况纠正一下
# 如果数据没有更新，请自己手动拉一下保存到本地文件(或请自己使用付费API) 󰫕

weather_temperature=$(cat ~/.emacs.d/archive/weather | awk -F'[()]' '{print $2}' | grep -oP '[0-9]+' | sed -n '4p')
weather_location1=$(cat ~/.emacs.d/archive/weather | sed -n '38p' | awk -F ', ' '{print $2}' | cut -c '1-9')
weather_location2=$(cat ~/.emacs.d/archive/weather | sed -n '38p' | awk -F ', ' '{print $3}')
echo "$weather_temperature°C ($weather_location1, $weather_location2)"
