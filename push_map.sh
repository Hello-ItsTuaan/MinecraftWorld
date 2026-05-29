#!/bin/bash
cd ~/minecraft_server
echo "🗣️ Surface đang gom file map..."
git add .
commit_time=$(date "+%Y-%m-%d %H:%M:%S")
git commit -m "Surface update map: $commit_time"

echo "🚀 Đang push từ Surface lên GitHub..."
git push origin main
echo "🗿 Xong phim! Map từ Surface đã lên mây!"
