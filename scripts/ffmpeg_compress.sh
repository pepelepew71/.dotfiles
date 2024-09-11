#!/bin/env bash

# 檢查是否有提供輸入參數
if [ -z "$1" ]; then
  echo "請提供輸入影片檔案的路徑。"
  exit 1
fi

input_file="$1"  # 第一個參數作為輸入影片檔案的路徑
output_file="output.mp4"  # 輸出的影片名稱

# 使用 ffmpeg 進行轉檔
ffmpeg -i "$input_file" -threads 8 -vcodec libx264 -crf 24 -s 1280x720 "$output_file"
