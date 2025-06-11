#!/bin/bash

# 基本路径配置
filename="uptime"

# 存储文件路径
file1="/root/.emacs.d/archive/${filename}"
file2="/root/.emacs.d/elisp/site-lisp/sh/${filename}"

# 初始化总时间
total_seconds=0

# 逐行读取文件内容
while IFS= read -r line; do
  # 匹配并提取小时、分钟和秒
  if [[ "$line" =~ Uptime:\ ([0-9]+)\ hours?,\ ([0-9]+)\ minutes?,\ ([0-9]+)\ seconds? ]]; then
    hours=${BASH_REMATCH[1]}
    minutes=${BASH_REMATCH[2]}
    seconds=${BASH_REMATCH[3]}
  elif [[ "$line" =~ Uptime:\ ([0-9]+)\ minutes?,\ ([0-9]+)\ seconds? ]]; then
    hours=0
    minutes=${BASH_REMATCH[1]}
    seconds=${BASH_REMATCH[2]}
  elif [[ "$line" =~ Uptime:\ ([0-9]+)\ seconds? ]]; then
    hours=0
    minutes=0
    seconds=${BASH_REMATCH[1]}
  else
    # 如果不匹配任何已知格式，跳过这行
    continue
  fi

  # 将时间转换为秒
  total_seconds=$((total_seconds + hours * 3600 + minutes * 60 + seconds))

done < "$file1"

# 可选：将秒数转换为小时:分钟:秒 格式
total_hours=$((total_seconds / 3600))
remaining_minutes=$(((total_seconds % 3600) / 60))
remaining_seconds=$((total_seconds % 60))

# 输出总时间
echo "Accompanying With GNU Emacs: $total_hours hours, $remaining_minutes minutes, $remaining_seconds seconds"
echo "Accompanying With GNU Emacs: $total_hours hours, $remaining_minutes minutes, $remaining_seconds seconds" > "$file2"
